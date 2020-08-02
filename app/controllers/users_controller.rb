class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @no_container = true
  end

  def edit
    @user = User.find(params[:id])
  end
end
