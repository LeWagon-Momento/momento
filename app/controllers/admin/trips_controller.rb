class Admin::TripsController < ApplicationController
  def index
    if current_user.admin? # this is how i think admin trips controller verify if user is admin
      @trips = Trip.all # after that you keep as many trips as you want to do testing
      @users = User.all
    else
      redirect_to user_session_path(@user) # unsure if this is correct or how is this working
    end
  end

  def edit
    @trip = Trip.find(params[:id])
  end

  # def update # if i have an edit does that mean i need an update
  # end

  def destroy
    @trip = Trip.find(params[:id])
    @trip.destroy
    redirect_to admin_trips_path
  end

  # def update
  #   if @trip.update(trip_params)
  #     redirect_to admin_trips_path(@trip)
  #   else
  #     render :edit
  # end
end

