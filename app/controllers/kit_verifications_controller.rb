class KitVerificationsController < ApplicationController
  before_action :set_kit_verification, only: %i[ show edit update destroy ]

  # GET /kit_verifications or /kit_verifications.json
  def index
    @kit_verifications = KitVerification.all
    @kit_verifications = @kit_verifications.order(:tube_kit).page(params[:page] || 1)
  end


  # GET /kit_verifications/1 or /kit_verifications/1.json
  def show
  end

  # GET /kit_verifications/new
  def new
    @kit_verification = KitVerification.new
  end

  # GET /kit_verifications/1/edit
  def edit
  end

  # POST /kit_verifications or /kit_verifications.json
  def create
    @kit_verification = KitVerification.new(kit_verification_params)

    respond_to do |format|
      if @kit_verification.save
        format.html { redirect_to @kit_verification, notice: "Kit verification was successfully created." }
        format.json { render :show, status: :created, location: @kit_verification }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @kit_verification.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kit_verifications/1 or /kit_verifications/1.json
  def update
    respond_to do |format|
      if @kit_verification.update(kit_verification_params)
        format.html { redirect_to @kit_verification, notice: "Kit verification was successfully updated." }
        format.json { render :show, status: :ok, location: @kit_verification }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @kit_verification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kit_verifications/1 or /kit_verifications/1.json
  def destroy
    @kit_verification.destroy
    respond_to do |format|
      format.html { redirect_to kit_verifications_url, notice: "Kit verification was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kit_verification
      @kit_verification = KitVerification.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def kit_verification_params
      params.require(:kit_verification).permit(:year, :enabled, :tube_kit_id)
    end
end
