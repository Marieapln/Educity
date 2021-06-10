class TeamsController < ApplicationController
  before_action :set_team, only: %i[show]

  def index
    @course = Course.find(params[:course_id])
    @teams = Team.where(course_id: @course.id)
  end

  def dashboard
    @team = Team.find(params[:team_id])
    @course = @team.course
  end

  def show; end

  private

  def set_team
    @team = Team.find(params[:id])
  end
end
