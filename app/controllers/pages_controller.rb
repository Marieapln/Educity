class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]
    # before_action :set_platforms, only: %i[home]
    # before_action :set_categories, only: %i[home]
    # before_action :set_subcategories, only: %i[home]

def home
    @list = []
    Course.all.each {|course| @list << course.title}
    @courses = Course.find(@list.each_with_index.max[1])
  end

  def index

  # Scope your query to the dates being shown:
  start_date = params.fetch(:start_date, Date.today).to_date

  # For a monthly view:
  @meetings = Meeting.where(starts_at: start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week)

  # Or, for a weekly view:
    @meetings = Meeting.where(starts_at: start_date.beginning_of_week..start_date.end_of_week)
end


  
end
