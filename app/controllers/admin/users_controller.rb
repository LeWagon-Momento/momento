class Admin::UsersController < ApplicationController
  def index
    if current_user.admin?
      @users = User.all
      @userlogin = Userlogin.all
    else
      redirect_to user_session_path(@user)
    end
  end
end
