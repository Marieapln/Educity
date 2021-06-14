class TeamsController < ApplicationController
  before_action :set_team, only: %i[show]
  before_action :set_questionnaire, only: %i[index]

  def index
    @course = Course.find(params[:course_id])
    @teams = Team.where(course_id: @course.id, time_of_the_day: desired_start_time, duration: desired_duration, day_of_the_week: desired_days)
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

  def set_questionnaire
    @questionnaire = Questionnaire.where(user_id: current_user).last
  end

  def desired_start_time
    hours_to_include = []
    (7..11).each { |x| hours_to_include << x } if @questionnaire.when.include?('Mornings')
    (12..14).each { |x| hours_to_include << x } if @questionnaire.when.include?('Lunch Breaks')
    (15..18).each { |x| hours_to_include << x } if @questionnaire.when.include?('Afternoons')
    (19..22).each { |x| hours_to_include << x } if @questionnaire.when.include?('Evenings')
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
