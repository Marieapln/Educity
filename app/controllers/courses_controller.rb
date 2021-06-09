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
end
