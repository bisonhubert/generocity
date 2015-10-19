class DonationCentersController < ApplicationController
  before_action :set_donation_center, only: [:show, :edit, :update, :destroy]

  # GET /donation_centers
  # GET /donation_centers.json
  def index
    @donation_centers = DonationCenter.all
  end

  # GET /donation_centers/1
  # GET /donation_centers/1.json
  def show
  end

  # GET /donation_centers/new
  def new
    @donation_center = DonationCenter.new
  end

  # GET /donation_centers/1/edit


  # POST /donation_centers
  # POST /donation_centers.json
  def create
    @donation_center = DonationCenter.new(donation_center_params)

    respond_to do |format|
      if @donation_center.save
        format.html { redirect_to @donation_center, notice: 'Donation center was successfully created.' }
        format.json { render :show, status: :created, location: @donation_center }
      else
        format.html { render :new }
        format.json { render json: @donation_center.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /donation_centers/1
  # PATCH/PUT /donation_centers/1.json


  # DELETE /donation_centers/1
  # DELETE /donation_centers/1.json


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_donation_center
      @donation_center = DonationCenter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def donation_center_params
      params.require(:donation_center).permit(:name, :address, :zip, :phone_number, :website, :district)
    end
end
