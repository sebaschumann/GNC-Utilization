class TubeVerificationsController < ApplicationController
  before_action :set_tube_verification, only: %i[ show edit update destroy ]

  # GET /tube_verifications or /tube_verifications.json
  def index
    @tube_verifications = TubeVerification.all
    @tube_verifications= @tube_verifications.order(:date).page(params[:page] || 1)
  end

  # GET /tube_verifications/1 or /tube_verifications/1.json
  def show
  end

  # GET /tube_verifications/new
  def new
    @tube_verification = TubeVerification.new
  end

  # GET /tube_verifications/1/edit
  def edit
  end

  # POST /tube_verifications or /tube_verifications.json
  def create
    @tube_verification = TubeVerification.new(tube_verification_params)

    respond_to do |format|
      if @tube_verification.save
        format.html { redirect_to @tube_verification, notice: "Tube verification was successfully created." }
        format.json { render :show, status: :created, location: @tube_verification }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tube_verification.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tube_verifications/1 or /tube_verifications/1.json
  def update
    respond_to do |format|
      if @tube_verification.update(tube_verification_params)
        format.html { redirect_to @tube_verification, notice: "Tube verification was successfully updated." }
        format.json { render :show, status: :ok, location: @tube_verification }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tube_verification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tube_verifications/1 or /tube_verifications/1.json
  def destroy
    @tube_verification.destroy
    respond_to do |format|
      format.html { redirect_to tube_verifications_url, notice: "Tube verification was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tube_verification
      @tube_verification = TubeVerification.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tube_verification_params
      params.require(:tube_verification).permit(:date, :enabled, :exam_type_id, :tube_id, :technician_id)
    end
end
