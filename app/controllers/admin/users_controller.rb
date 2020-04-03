class Admin::UsersController < ApplicationController
  def index
    if current_user.admin? # check if user has admin status
      @users = User.all # accessing all users in database
      @userlogin = Userlogin.all # accessing all login sessions from users
    else
      redirect_to user_session_path(@user)
    end


    def edit
      @user = User.find(params[:id])
    end

    def destroy
      @user = User.find(params[:id])
      @user.destroy
      redirect_to_admin_users_path
    end
  end
end
