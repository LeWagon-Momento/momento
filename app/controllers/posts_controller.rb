class PostsController < ApplicationController
  before_action :post_find, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
    @post = Post.find(params[:id])
    @trip = Trip.find(params[:trip_id])
  end

  def new
    @trip = Trip.find(params[:trip_id])
    @post = Post.new
  end

  def create
    @post = Post.new(params_posts)
    @trip = Trip.find(params[:trip_id])
    @post.trip = @trip
    respond_to do |format|
      if @post.save
        format.html { redirect_to trip_path(@trip) }
        format.json
      else
        format.html { render :new }
        format.json
      end
    end
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
    params.require(:post).permit(:name, :description, :address, :latitude, :longitude, :date, :photos)
  end
end
