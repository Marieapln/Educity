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
