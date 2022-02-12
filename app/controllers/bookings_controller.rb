class BookingsController < ApplicationController

  before_action :set_booking, only: [:show, :destroy]

  def index
    @bookings = Booking.all
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    if @booking.save
      redirect_to experience_bookings_path
    else
      render :new
    end
  end

  def new
    @booking = Booking.new
  end

  def destroy
    @booking.destroy
    redirect_to experience_bookings_path
  end

  def show
  end


#Can we just let them cancel? We don't want to let them amend. How to just cancel?

  # def update
  #   @booking.update(booking_params)
  #   redirect_to booking_path(@booking)
  # end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:experience_id, :user_id, :date)
  end
end
