class BookingsController < ApplicationController
  def create
      @booking = Booking.new(experience_params)
    if @booking.save
      redirect_to experiences_path
    else
      render :new
    end
  end

  def new
    @booking = Booking.new
  end

  def destroy
   #TODO
  end

  def update
   #TODO
  end

  private

  def experience_params
    params.require(:booking).permit(:experience_id, :user_id :date)
  end

end
