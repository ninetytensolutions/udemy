class NinetyTenBookingsController < ApplicationController
  before_action :set_ninety_ten_booking, only: [:show, :edit, :update, :destroy]

  # GET /ninety_ten_bookings
  # GET /ninety_ten_bookings.json
  def index
    @ninety_ten_bookings = NinetyTenBooking.all
  end

  # GET /ninety_ten_bookings/1
  # GET /ninety_ten_bookings/1.json
  def show
  end

  # GET /ninety_ten_bookings/new
  def new
    @ninety_ten_booking = NinetyTenBooking.new
  end

  # GET /ninety_ten_bookings/1/edit
  def edit
  end

  # POST /ninety_ten_bookings
  # POST /ninety_ten_bookings.json
  def create
    @ninety_ten_booking = NinetyTenBooking.new(ninety_ten_booking_params)

    respond_to do |format|
      if @ninety_ten_booking.save
        format.html { redirect_to @ninety_ten_booking, notice: 'Ninety ten booking was successfully created.' }
        format.json { render :show, status: :created, location: @ninety_ten_booking }
      else
        format.html { render :new }
        format.json { render json: @ninety_ten_booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ninety_ten_bookings/1
  # PATCH/PUT /ninety_ten_bookings/1.json
  def update
    respond_to do |format|
      if @ninety_ten_booking.update(ninety_ten_booking_params)
        format.html { redirect_to @ninety_ten_booking, notice: 'Ninety ten booking was successfully updated.' }
        format.json { render :show, status: :ok, location: @ninety_ten_booking }
      else
        format.html { render :edit }
        format.json { render json: @ninety_ten_booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ninety_ten_bookings/1
  # DELETE /ninety_ten_bookings/1.json
  def destroy
    @ninety_ten_booking.destroy
    respond_to do |format|
      format.html { redirect_to ninety_ten_bookings_url, notice: 'Ninety ten booking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ninety_ten_booking
      @ninety_ten_booking = NinetyTenBooking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ninety_ten_booking_params
      params.require(:ninety_ten_booking).permit(:date__c, :time__c, :firstname__c, :lastname__c, :phonenumber__c, :guests__c, :comments__c, :status__c, :username__c)
    end
end
