class TeamsController < ApplicationController
  def index
    @course = Course.find(params[:course_id])
    @teams = Team.where(course_id: @course.id)
  end

  def dashboard
    @team = Team.find(params[:team_id])
    @course = @team.course
  end
end
