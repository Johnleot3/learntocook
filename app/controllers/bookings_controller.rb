class BookingsController < ApplicationController
  def new
    @kitchen = Kitchen.find(params[:kitchen_id])
    @booking = Booking.new
  end

  def create
    @kitchen = Kitchen.find(params[:kitchen_id])
    @booking = Booking.new(booking_params)
    @booking.kitchen = @kitchen
    @booking.user = current_user
    if @booking.save
      redirect_to kitchen_path(@kitchen)
    else
      render "users/show"
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:date)
  end
end
