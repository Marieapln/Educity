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
    @questionnaire.when.delete_at(0)
    @questionnaire.days.delete_at(0)

    if @questionnaire.save
      redirect_to teams_index_path(@course)
    end
  end

  private

    def list_params
    params.require(:questionnaire).permit(:duration, when: [], days: [])
  end


end
