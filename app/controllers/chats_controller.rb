class ChatsController < ApplicationController

def create
  @user = current_user
  # binding.pry

  @chat = Chat.create(list_params)
  @chat.user = @user
  @chat.team = Team.find(params[:team_id])
  if @chat.save
    redirect_to dashboard_path(@chat.team)
  end
end

  private

  def list_params
    params.require(:chat).permit(:message)
  end
end
