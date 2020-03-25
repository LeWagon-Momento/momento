class UsersController < ApplicationController
  def show
    @user = User.find(params[:id]) # finding user through their id, used params through the console
  end

  def edit
  end
end


