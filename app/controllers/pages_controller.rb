class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]
    # before_action :set_platforms, only: %i[home]
    # before_action :set_categories, only: %i[home]
    # before_action :set_subcategories, only: %i[home]

  def home; end

  def index

  current_user.teams.each do |team|

    for week in 0..3
      start_date = team.start_date + (week * 7).days
      Meeting.create!(user_id: user.id, team_id: team.id, start_time: start_date,
      end_time: (start_date.to_time + team.duration.hours).to_datetime,
      name: team.course.title)
    end
  end
  # Scope your query to the dates being shown:
  start_date = params.fetch(:start_date, Date.today).to_date

  # For a monthly view:
  @meetings = Meeting.where(starts_at: start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week)

  # Or, for a weekly view:
    @meetings = Meeting.where(starts_at: start_date.beginning_of_week..start_date.end_of_week)
end



end
