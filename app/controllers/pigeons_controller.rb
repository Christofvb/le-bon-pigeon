class PigeonsController < ApplicationController
    def index
      if params[:query]
        @pigeons = Pigeon.search_by_pigeon(params[:query])
      else
        @pigeons = Pigeon.all
      end
      params[:query] = ""
    end

    def show
      @pigeon = Pigeon.find(params[:id])
      @booking = Booking.new
      @bookings = Booking.all
    end

end
