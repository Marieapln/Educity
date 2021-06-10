class QuestionnairesController < ApplicationController



  def create
    @questionnaire = Questionnaire.new
    @questionnaire.user = current_user
    @questionnaire.course = Course.find(params[:course_id])
    @questionnaire.save
  end
end
