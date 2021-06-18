class ChatsController < ApplicationController
def create
  @user = current_user
  # binding.pry

  @chat = Chat.create(list_params)
  @chat.user = @user
  @chat.team = Team.find(params[:team_id])
  @users =   @chat.team.users.all.reject{|user| user == current_user}
  if @chat.save
    redirect_to dashboard_path(@chat.team)
    @users.each do |u|
      Notification.create!(user_id: u.id, alert: true, team_id: params[:team_id])
    end

  end
end

  private

  def list_params
    params.require(:chat).permit(:message)
  end

end
