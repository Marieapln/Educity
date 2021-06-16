class StudentsTeamsController < ApplicationController
  def create
    students_team = StudentsTeam.create!(user_id: current_user.id, team_id: params[:teams_id])
    students_team.save
    redirect_to students_teams_path
  end

  def index
    @user = current_user
    @teams = @user.teams
  end
end
