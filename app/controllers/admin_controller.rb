class AdminController < ApplicationController
  def index
    if current_user.admin? # checking if user has admin status
      @trips = Trip.all # allowing admin access to all trips
      @users = User.all # allowing admin access to all users
      @userlogin = Userlogin.all # allowing admin access to get all user login data
    else
      redirect_to user_session_path(@user)
    end
  end
end
