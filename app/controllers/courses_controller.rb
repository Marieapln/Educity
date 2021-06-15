class CoursesController < ApplicationController
  # before_action :set_course, only: %i[show]

  def index
    @courses = Course.all
    @search = params[:search]
    if @search.present?
      @title = @search[:title]
      @courses = Course.where("title ILIKE ?", "%#{@title}%")
    end
    if @courses
      set_platforms
      set_categories
      set_subcategories
    end
  end

  def create
    @url = params[:url]
    html_file = URI.open(@url).read
    html_doc = Nokogiri::HTML(html_file)
    platform = html_doc.search('meta[property="og:site_name"]')[0].attributes["content"].value
    # binding.pry
    case platform
    when "Codecademy"
      title = html_doc.search('h1')[0].children.text.strip
      category = 'Data Science'
      subcategories = []
      # html_doc.search('main').search('section').search('p').first.text.split('# ').each { |c| subcategories << c.strip.capitalize if c.length > 0 }
      hours = html_doc.search('aside').children[2].children[1].text.strip.match(/\d+/)[0].to_i
    when "Coursera"
      title = html_doc.search('h1').text.strip
      # binding.pry
      if !title || title == ""
        title_search_html = html_doc.search('main').search('a')
        title_search_html.each do |el|
          if el.attr('href') && el.attr('href')[0..16] == "/specializations/"
            title = el.text
            break
          end
        end
      end
      subcategories = []
      breadcrumbs = html_doc.search('#main')[0]
      category = breadcrumbs.search('a')[1].text
      subcategories << breadcrumbs.search('a')[2].text
      html_doc.search('._rsc0bd').each { |c| subcategories << c.text }
      syllabus = []
      html_doc.search('.SyllabusModule').search('h2').each { |week_title| syllabus << week_title.text }
      html_doc.search('.CourseItem').search('h3').each { |course_title| syllabus << course_title.text } unless syllabus
      first_time_frame = html_doc.search('._1tu07i3a').search('span')[0].text.strip
      if first_time_frame.include?('months')
        months = first_time_frame.match(/\d+/)[0].to_i
        hours = html_doc.search('._1tu07i3a')[4].children[1].children.text.match(/\d+/)[0].to_i * months
      else
        hours = first_time_frame.match(/\d+/)[0].to_i
      end
    when 'Udemy'
      title = html_doc.search('h1').text.strip
      category = html_doc.search('.clp-component-render').search('a')[0].text.strip
      subcategories = []
      subcategories << html_doc.search('.clp-component-render').search('a')[1].text.strip
      subcategories << html_doc.search('.clp-component-render').search('a')[2].text.strip
      hours = html_doc.search('.ud-component--course-landing-page-udlite--curriculum').search('span')[1].text.strip.match(/\d+h/)[0].to_i
    end
    Course.create(title: title, url: @url, platform: platform, category: category, subcategories: subcategories, course_length: hours)
  end

  def show
    @questionnaire = Questionnaire.new
    @course = Course.find(params[:id])
  end

  private

  def set_platforms
    @platforms = []
    @courses.uniq(&:platform).each { |course| @platforms << course.platform }.sort
  end

  def set_categories
    @categories = []
    @courses.uniq(&:category).each { |course| @categories << course.category }.sort
  end

  def set_subcategories
    subcategories = {}
    @subcategories = {}
    @courses.each do |course|
      course.subcategories.each do |subcat|
        subcategories[course.category] = [] unless subcategories[course.category]
        subcategories[course.category] << subcat
      end
    end
    subcategories.each do |category|
      category[1].uniq.each do |subcat|
        cat_to_add = category[0].downcase.gsub(/\W/, '')
        @subcategories[cat_to_add] = [] unless @subcategories[cat_to_add]
        @subcategories[cat_to_add] << subcat
      end
    end
    # binding.pry
  end
end
