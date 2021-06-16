class ChatsController < ApplicationController

def create
  @user = current_user
  binding.pry

  @message = Chat.create(user_id: @user.id, team_id: params[:team_id], message: params[:message])
end

end
