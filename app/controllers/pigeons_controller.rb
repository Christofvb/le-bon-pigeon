class PigeonsController < ApplicationController
    def index
      @pigeons = Pigeon.all
    end

    def show
      @pigeon = Pigeon.find(params[:id])
      @booking = Booking.new
      @bookings = Booking.all
    end

end
