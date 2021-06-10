class StudentsTeamsController < ApplicationController
  def create
    students_team = StudentsTeam.create!(user_id: current_user.id, team_id: params[:teams_id])
    students_team.save
  end

  def index; end
end
