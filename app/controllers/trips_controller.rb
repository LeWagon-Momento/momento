class TripsController < ApplicationController
  # skip_before_action :authenticate_user!, only: :show
  before_action :trip_find, only: [:show, :edit, :update, :destroy]

  def index
    @trips = []
    Trip.all.each do |trip|
      unless trip.end_date.nil? && trip.user == current_user
        @trips << trip
      end
    end
    @trips

    # checking user's location
    current_location = request.location
    # user's array of active trips
    users_active_trips = current_user.trips.where(end_date: nil)

    if current_location.city != current_user.city.name && users_active_trips.count > 0
      redirect_to new_trip_path
    end
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
    @trip_review_url = "https://sharing-the-momento.herokuapp.com/trips/#{@trip.id}/review"

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
