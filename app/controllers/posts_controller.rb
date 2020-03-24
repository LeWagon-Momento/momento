class PostsController < ApplicationController
  before_action :post_find, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
    @post = Post.find(params[:id])
    @trip = Trip.find(params[:trip_id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def post_find
    @post = Post.find(params[:id])
  end

  def params_posts
    params.require(:post).permit(:name, :description, :address, :lat, :long, :date)
  end
end
