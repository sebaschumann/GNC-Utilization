class TubeKitsController < ApplicationController
  before_action :set_tube_kit, only: %i[ show edit update destroy ]

  # GET /tube_kits or /tube_kits.json
  def index
    @tube_kits = TubeKit.all
    @tube_kits = @tube_kits.order(:kits_number).page(params[:page] || 1)
  end

  # GET /tube_kits/1 or /tube_kits/1.json
  def show
  end

  # GET /tube_kits/new
  def new
    @tube_kit = TubeKit.new
  end

  # GET /tube_kits/1/edit
  def edit
  end

  # POST /tube_kits or /tube_kits.json
  def create
    @tube_kit = TubeKit.new(tube_kit_params)

    respond_to do |format|
      if @tube_kit.save
        format.html { redirect_to @tube_kit, notice: "Tube kit was successfully created." }
        format.json { render :show, status: :created, location: @tube_kit }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tube_kit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tube_kits/1 or /tube_kits/1.json
  def update
    respond_to do |format|
      if @tube_kit.update(tube_kit_params)
        format.html { redirect_to @tube_kit, notice: "Tube kit was successfully updated." }
        format.json { render :show, status: :ok, location: @tube_kit }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tube_kit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tube_kits/1 or /tube_kits/1.json
  def destroy
    @tube_kit.destroy
    respond_to do |format|
      format.html { redirect_to tube_kits_url, notice: "Tube kit was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tube_kit
      @tube_kit = TubeKit.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tube_kit_params
      params.require(:tube_kit).permit(:kit_number, :tube_id)
    end
end
