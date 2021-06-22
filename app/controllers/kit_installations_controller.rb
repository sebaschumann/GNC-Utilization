class KitInstallationsController < ApplicationController
  before_action :set_kit_installation, only: %i[ show edit update destroy ]

  # GET /kit_installations or /kit_installations.json
  def index
    @kit_installations = KitInstallation.all
    @kit_installations = @kit_installations.order(:date).page(params[:page] || 1)
  end

  # GET /kit_installations/1 or /kit_installations/1.json
  def show
  end

  # GET /kit_installations/new
  def new
    @kit_installation = KitInstallation.new
  end

  # GET /kit_installations/1/edit
  def edit
  end

  # POST /kit_installations or /kit_installations.json
  def create
    @kit_installation = KitInstallation.new(kit_installation_params)

    respond_to do |format|
      if @kit_installation.save
        format.html { redirect_to @kit_installation, notice: "Kit installation was successfully created." }
        format.json { render :show, status: :created, location: @kit_installation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @kit_installation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kit_installations/1 or /kit_installations/1.json
  def update
    respond_to do |format|
      if @kit_installation.update(kit_installation_params)
        format.html { redirect_to @kit_installation, notice: "Kit installation was successfully updated." }
        format.json { render :show, status: :ok, location: @kit_installation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @kit_installation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kit_installations/1 or /kit_installations/1.json
  def destroy
    @kit_installation.destroy
    respond_to do |format|
      format.html { redirect_to kit_installations_url, notice: "Kit installation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kit_installation
      @kit_installation = KitInstallation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def kit_installation_params
      params.require(:kit_installation).permit(:date, :cost_on_argentinian_pesos, :tube_kit_id, :workshop_id, :car_id)
    end
end
