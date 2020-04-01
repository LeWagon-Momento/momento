class CommentsController < ApplicationController
  def new
    @trip = Trip.find(params[:trip_id])
    @comment = Comment.new
  end

  def create
    @trip = trip.find(params[:trip_id])
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @comment.save

    redirect_to trip_trip_path(@trip)
  end

  private

  def comment_params
    params.require(:comment).permit(:name, :comment_description, :trip_id)
  end
end
