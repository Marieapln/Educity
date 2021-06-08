class UsersController < ApplicationController
  def edit
    @user.avatar.attach(io: File.open('app/assets/images/placeholder.png'),
    filename: 'placeholder.png', content_type: 'image/png')
  end
     
  private

  def set_user
    @user = current_user
  end
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :bio, :username)
  end
end
