class QuestionnairesController < ApplicationController

  def new
    @questionnaire = Questionnaire.new
    @questionnaire.course = Course.find(params[:course_id])
  end
  def create
    @questionnaire = Questionnaire.create(list_params)
    @course = Course.find(params[:course_id])
    @questionnaire.course = @course

    @questionnaire.user = current_user
    if @questionnaire.save
      redirect_to teams_index_path(@course)
  end
  end

    def list_params
    params.require(:questionnaire).permit(:when, :duration)
  end
end
