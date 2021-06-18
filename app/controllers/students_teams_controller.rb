class StudentsTeamsController < ApplicationController
  def create
    students_team = StudentsTeam.create!(user_id: current_user.id, team_id: params[:teams_id])
    students_team.save
    redirect_to students_teams_path
  end

  def index
    @user = current_user
    Meeting.all.each {|instance| instance.destroy}
    @user.teams.each do |team|

      for week in 0..3
        start_date = team.start_date + (week * 7).days

        Meeting.create!(user_id: @user.id, team_id: team.id, start_time: start_date,
        end_time: (start_date.to_time + team.duration.hours).to_datetime,
        name: team.course.title)

      end
   end
    @teams = StudentsTeam.where(user_id: @user.id)

    @meetings = Meeting.where(user_id: @user.id)
    @meeting_list = @meetings.select{|m| m.start_time > DateTime.now}
  end




end
