class UsersController < ApplicationController
  def show
    @user = User.find(params[:id]) # why singular is because show is for individual users
  end

  def edit
    @user = User.find(params[:id]) # not sure why i am using this as i just copied and pasted from lecture. need to ask why
  end
end

# // This

