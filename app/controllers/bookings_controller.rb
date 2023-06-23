class BookingsController < ApplicationController
  before_action :set_booking, only: :destroy
  before_action :set_pigeon, only: %i[create show]

  def index
    @bookings = Booking.all
  end

  def show
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.pigeon = @pigeon
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  def destroy
    @booking.destroy
<<<<<<< HEAD
    flash[:notice] = "La réservation a été supprimée avec succès."
    redirect_to bookings_path
=======

    redirect_to bookings_path, status: :see_other

    flash[:notice] = "La réservation a été supprimée avec succès."
    redirect_to bookings_path

>>>>>>> 40c39e440d030fbb22e18efc7911224638c6cc2d
  end

  private

  def booking_params
    params.require(:booking).permit(:date_start, :date_end)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_pigeon
    @pigeon = Pigeon.find(params[:pigeon_id])
  end
end
