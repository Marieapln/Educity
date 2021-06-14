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
  end

  def create
    @url = params[:url]
    html_file = URI.open(@url).read
    html_doc = Nokogiri::HTML(html_file)
        # binding.pry

    platform =  html_doc.search('meta[property="og:site_name"]')[0].attributes["content"].value
    if platform == "Codecademy"
      @title = html_doc.search('h1.heading__2X5Zo7G1JUo6H9EbL5j-mP').text.strip
    elsif platform == "Coursera"
      @title = html_doc.search('h1.banner-title').text.strip
      subcategories = []
      html_doc.search('._rsc0bd').each {|c| subcategories << c.attributes["title"].value}
    end

    Course.new(title: @title, url: @url, platform: platform, subcategories: subcategories).save
  end


  def show
    @questionnaire = Questionnaire.new
    @course = Course.find(params[:id])
  end
end




