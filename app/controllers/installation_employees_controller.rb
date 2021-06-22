class InstallationEmployeesController < ApplicationController
  before_action :set_installation_employee, only: %i[ show edit update destroy ]

  # GET /installation_employees or /installation_employees.json
  def index
    @installation_employees = InstallationEmployee.all
    @installation_employees = @installation_employees.order(:kit_installation).page(params[:page] || 1)
  end

  # GET /installation_employees/1 or /installation_employees/1.json
  def show
  end

  # GET /installation_employees/new
  def new
    @installation_employee = InstallationEmployee.new
  end

  # GET /installation_employees/1/edit
  def edit
  end

  # POST /installation_employees or /installation_employees.json
  def create
    @installation_employee = InstallationEmployee.new(installation_employee_params)

    respond_to do |format|
      if @installation_employee.save
        format.html { redirect_to @installation_employee, notice: "Installation employee was successfully created." }
        format.json { render :show, status: :created, location: @installation_employee }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @installation_employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /installation_employees/1 or /installation_employees/1.json
  def update
    respond_to do |format|
      if @installation_employee.update(installation_employee_params)
        format.html { redirect_to @installation_employee, notice: "Installation employee was successfully updated." }
        format.json { render :show, status: :ok, location: @installation_employee }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @installation_employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /installation_employees/1 or /installation_employees/1.json
  def destroy
    @installation_employee.destroy
    respond_to do |format|
      format.html { redirect_to installation_employees_url, notice: "Installation employee was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_installation_employee
      @installation_employee = InstallationEmployee.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def installation_employee_params
      params.require(:installation_employee).permit(:kit_installation_id, :employee_id)
    end
end
