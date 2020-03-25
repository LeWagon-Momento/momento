class UsersController < ApplicationController
  def show
    @user = User.find(params[:id]) # why singular is because show is for individual users
  end

  def edit
  end
end


