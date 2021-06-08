class StudentsTeamsController < ApplicationController
  def index
    @course = Course.find(params[:course_id])
    @teams = Team.where(course_id: @course.id)

  end
end
