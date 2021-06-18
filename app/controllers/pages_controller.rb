class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  # before_action :set_platforms, only: %i[home]
  # before_action :set_categories, only: %i[home]
  # before_action :set_subcategories, only: %i[home]

  def home
    @new_courses = Course.order(created_at: :desc).limit(2)
    @popular_courses = Course.all.to_a.sort_by { |c| -c.users.count }.first(2)
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
