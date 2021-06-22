class GncChargesController < ApplicationController
  before_action :set_gnc_charge, only: %i[ show edit update destroy ]

  # GET /gnc_charges or /gnc_charges.json
  def index
    @gnc_charges = GncCharge.all
    @gnc_charges = @gnc_charges.order(:name).page(params[:page] || 1)
  end

  # GET /gnc_charges/1 or /gnc_charges/1.json
  def show
  end

  # GET /gnc_charges/new
  def new
    @gnc_charge = GncCharge.new
  end

  # GET /gnc_charges/1/edit
  def edit
  end

  # POST /gnc_charges or /gnc_charges.json
  def create
    @gnc_charge = GncCharge.new(gnc_charge_params)

    respond_to do |format|
      if @gnc_charge.save
        format.html { redirect_to @gnc_charge, notice: "Gnc charge was successfully created." }
        format.json { render :show, status: :created, location: @gnc_charge }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @gnc_charge.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gnc_charges/1 or /gnc_charges/1.json
  def update
    respond_to do |format|
      if @gnc_charge.update(gnc_charge_params)
        format.html { redirect_to @gnc_charge, notice: "Gnc charge was successfully updated." }
        format.json { render :show, status: :ok, location: @gnc_charge }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @gnc_charge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gnc_charges/1 or /gnc_charges/1.json
  def destroy
    @gnc_charge.destroy
    respond_to do |format|
      format.html { redirect_to gnc_charges_url, notice: "Gnc charge was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gnc_charge
      @gnc_charge = GncCharge.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gnc_charge_params
      params.require(:gnc_charge).permit(:charge_moment, :weather, :celsius_temperature, :cost_on_argentinian_pesos, :car_id, :service_station_id, :client_id)
    end
end
