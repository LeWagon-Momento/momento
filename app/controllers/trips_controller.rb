class TripsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :trip_find, only: [:show, :edit, :update, :destroy]

  def index
    @trips = Trip.all
  end

  def show
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

  def trip_find
    @trip = Trip.find(params[:id])
  end

  def params_trips
    params.require(:trip).permit(:name, :description, :start_date, :end_date, :vanity_url)
  end
end
