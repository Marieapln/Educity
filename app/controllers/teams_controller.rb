class TeamsController < ApplicationController
  before_action :set_team, only: %i[show]
  before_action :set_questionnaire, only: %i[index]
  def index
    @course = Course.find(params[:course_id])
    begin
      @teams = Team.where(course_id: @course.id, time_of_the_day: desired_start_time, duration: desired_duration,
                          day_of_the_week: desired_days)
    rescue NoMethodError => e
      @teams = []
    end
    @team = Team.new
    @team.course = Course.find(params[:course_id])
  end

  def dashboard
    @team = Team.find(params[:team_id])
    notification = Notification.where(team_id: @team.id, user_id: current_user.id).last
    unless notification.nil?
      notification.destroy
    end

    @course = @team.course
    @messages = Chat.where(team_id: params[:team_id])
    @chat = Chat.new
  end

  def new
    @team = Team.new
    @course = Course.find(params[:course_id])
  end

  def create
    @user = current_user
    @team = Team.create(list_params)
    @course = Course.find(params[:course_id])
    @team.course = @course
    @team.time_of_the_day = params[:team]["time_of_the_day(4i)"].to_i

      if @team.save
        StudentsTeam.create!(team_id: @team.id, user_id: @user.id)
        redirect_to students_teams_path
    end

  end



  private

  def list_params
    params.require(:team).permit(:day_of_the_week, :start_date, :duration)
  end

  def set_team
    @team = Team.find(params[:id])
  end

  def set_questionnaire
    @questionnaire = Questionnaire.where(user_id: current_user).last
  end

  def desired_start_time
    hours_to_include = []
    (7..11).each { |x| hours_to_include << x } if @questionnaire.when.include?('Mornings')
    (12..14).each { |x| hours_to_include << x } if @questionnaire.when.include?('Lunch Breaks')
    (15..17).each { |x| hours_to_include << x } if @questionnaire.when.include?('Afternoons')
    (18..22).each { |x| hours_to_include << x } if @questionnaire.when.include?('Evenings')
    if @questionnaire.when.include?('Nights')
      (0..6).each { |x| hours_to_include << x }
      hours_to_include << 23
    end
    return hours_to_include
  end

  def desired_duration
    case @questionnaire.duration
    when '< 1 hour'
      times_to_include = [1]
    when '1-3 hours'
      times_to_include = (1..3).to_a
    when '4-9 hours'
      times_to_include = (4..9).to_a
    when '10+ hours'
      times_to_include = (10..60).to_a
    end
    return times_to_include
  end

  def desired_days
    return @questionnaire.days
  end
end
