class TripsController < ApplicationController
  # skip_before_action :authenticate_user!, only: :show
  before_action :trip_find, only: [:show, :edit, :update, :destroy]

  def index
    @trips = Trip.all
  end

  def show
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(params_trips)
    @trip.user = current_user
    @trip.start_date = Date.today
    @trip.save

    redirect_to trip_path(@trip)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  # Review Trip method
  def review
    @trip = Trip.find(params[:trip_id])
    @posts = @trip.posts
    @markers = @posts.map do |post|
      {
        lat: post.latitude,
        lng: post.longitude
      }
    end
  end

  private

  def trip_find
    @trip = Trip.find(params[:id])
  end

  def params_trips
    params.require(:trip).permit(:name, :description, :start_date, :end_date, :vanity_url)
  end
end
