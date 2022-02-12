class UsersController < ApplicationController
  def show
    @bookings = current_user.bookings
    @experiences = current_user.experiences
  end
end
