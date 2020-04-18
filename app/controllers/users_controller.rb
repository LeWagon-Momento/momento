class UsersController < ApplicationController
  def show
    @user = User.find(params[:id]) # to target specific users based on their IDs in the schema
    @no_container = true
  end

  def edit
    @user = User.find(params[:id])
  end
end

