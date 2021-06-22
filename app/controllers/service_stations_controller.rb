class ServiceStationsController < ApplicationController
  before_action :set_service_station, only: %i[ show edit update destroy ]

  # GET /service_stations or /service_stations.json
  def index
    @service_stations = ServiceStation.all
    @service_stations = @service_stations.order(:name).page(params[:page] || 1)
  end

  # GET /service_stations/1 or /service_stations/1.json
  def show
  end

  # GET /service_stations/new
  def new
    @service_station = ServiceStation.new
  end

  # GET /service_stations/1/edit
  def edit
  end

  # POST /service_stations or /service_stations.json
  def create
    @service_station = ServiceStation.new(service_station_params)

    respond_to do |format|
      if @service_station.save
        format.html { redirect_to @service_station, notice: "Service station was successfully created." }
        format.json { render :show, status: :created, location: @service_station }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @service_station.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_stations/1 or /service_stations/1.json
  def update
    respond_to do |format|
      if @service_station.update(service_station_params)
        format.html { redirect_to @service_station, notice: "Service station was successfully updated." }
        format.json { render :show, status: :ok, location: @service_station }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @service_station.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_stations/1 or /service_stations/1.json
  def destroy
    @service_station.destroy
    respond_to do |format|
      format.html { redirect_to service_stations_url, notice: "Service station was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_station
      @service_station = ServiceStation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def service_station_params
      params.require(:service_station).permit(:name, :adress, :fuel_types, :flag, :dispensers_quantity, :locality_id)
    end
end
