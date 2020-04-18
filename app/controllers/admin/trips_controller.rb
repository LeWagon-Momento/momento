class Admin::TripsController < ApplicationController
  def index # THIS WILL SHOW ALL TRIPS NOT DASHBOARD FOR ADMIN PANEL
    if current_user.admin? # check if user if traveler or admin
     @trips = Trip.all # access all trips in database
    else
      redirect_to user_session_path(@user) # back to normal user access right
    end
  end

  def edit
    @trip = Trip.find(params[:id])
  end

  def destroy
    @trip = Trip.find(params[:id])
    @trip.destroy
    redirect_to admin_trips_path
  end

  def update
    @trip = Trip.find(params[:id])
    @trip.update(trip_params)
    redirect_to admin_trips_path
  end

  private #

  def trip_params
    params.require(:trip).permit(:name, :description, :start_date, :end_date) # whitelisting of my trips
  end
end
