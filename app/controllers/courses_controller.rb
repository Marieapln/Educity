require 'open-uri'
require 'nokogiri'

class CoursesController < ApplicationController
  # before_action :set_course, only: %i[show]

  def index
    @courses = Course.all
    @search = params[:search]
    if @search.present?
      @title = @search[:title]
      @courses = Course.where("title ILIKE ?", "%#{@title}%")
    end
    set_platforms
    set_categories
    set_subcategories
  end

  def create
    @url = params[:url]
    html_file = URI.open(@url).read
    html_doc = Nokogiri::HTML(html_file)
        # binding.pry

    platform =  html_doc.search('meta[property="og:site_name"]')[0].attributes["content"].value
    if platform == "Codecademy"
      title = html_doc.search('h1.heading__2X5Zo7G1JUo6H9EbL5j-mP').text.strip
      hours = html_doc.search('.gamut-1sk71u6-Text')[2].children.text.strip.match(/\d/)[0].to_i
      Course.new(title: title, platform:platform, url: @url, course_length: hours).save


    elsif platform == "Coursera"
      title = html_doc.search('h1.banner-title').text.strip
      subcategories = []
      html_doc.search('._rsc0bd').each {|c| subcategories << c.attributes["title"].value}
      category = html_doc.search('.breadcrumb-item').text.strip
      months = html_doc.search('._1tu07i3a')[4].children[0].children.children.text.match(/\d/)[0].to_i
      hours = html_doc.search('._1tu07i3a')[4].children[1].children.children.text.match(/\d/)[0].to_i
      Course.new(title: title, url: @url, platform: platform, subcategories: subcategories, course_length: months*hours, category:"Technology").save

    end
  end


  def show
    @questionnaire = Questionnaire.new
    @course = Course.find(params[:id])
  end

  private

  def set_platforms
    @platforms = []
    @courses.uniq(&:platform).each { |course| @platforms << course.platform.capitalize }
  end

  def set_categories
    @categories = []
    @courses.uniq(&:category).each { |course| @categories << course.category.split.each(&:capitalize).join(' ') }
  end

  def set_subcategories
    @subcategories = []
    @courses.uniq(&:subcategories).each { |course| course.subcategories.uniq.each{ |subcat| @subcategories << subcat.split.each(&:capitalize).join(' ') } }
  end
end




