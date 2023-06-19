class BookingsController < ApplicationController
    before_action :set_bookmark, only: :destroy
    before_action :set_pigeon, only:  [:create, :show]

    def index
      @bookings = Booking.all
    end

    def show
    end

    def create
        @booking = Booking.new(booking_params)
        @booking.pigeon = @pigeon
        if @booking.save
          redirect_to bookings_path(@pigeon)
        else
          render :new
        end    
    end

    def destroy
      @booking.destroy
      redirect_to pigeons_path(@booking.pigeon), status: :see_other
    end

    private

    def booking_params
      params.require(:booking).permit(:date_start, :date_end, :user_id)
    end
  
    # pour destroy
    # def set_booking
    #   @booking = Booking.find(params[:id])
    # end
  
    def set_pigeon
      @pigeon = Pigeon.find(params[:pigeon_id])
    end
end
