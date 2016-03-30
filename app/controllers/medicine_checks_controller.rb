class MedicineChecksController < ApplicationController
  before_action :set_medicine_check, only: [:show, :edit, :update, :destroy]

  # GET /medicine_checks
  # GET /medicine_checks.json
  def index
    @medicine_checks = MedicineCheck.all
  end

  # GET /medicine_checks/1
  # GET /medicine_checks/1.json
  def show
  end

  # GET /medicine_checks/new
  def new
    @medicine_check = MedicineCheck.new
  end

  # GET /medicine_checks/1/edit
  def edit
  end

  # POST /medicine_checks
  # POST /medicine_checks.json
  def create
    @medicine_check = MedicineCheck.new(medicine_check_params)

    respond_to do |format|
      if @medicine_check.save
        format.html { redirect_to @medicine_check, notice: 'Medicine check was successfully created.' }
        format.json { render :show, status: :created, location: @medicine_check }
      else
        format.html { render :new }
        format.json { render json: @medicine_check.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medicine_checks/1
  # PATCH/PUT /medicine_checks/1.json
  def update
    respond_to do |format|
      if @medicine_check.update(medicine_check_params)
        format.html { redirect_to @medicine_check, notice: 'Medicine check was successfully updated.' }
        format.json { render :show, status: :ok, location: @medicine_check }
      else
        format.html { render :edit }
        format.json { render json: @medicine_check.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medicine_checks/1
  # DELETE /medicine_checks/1.json
  def destroy
    @medicine_check.destroy
    respond_to do |format|
      format.html { redirect_to medicine_checks_url, notice: 'Medicine check was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medicine_check
      @medicine_check = MedicineCheck.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def medicine_check_params
      params.require(:medicine_check).permit(:name)
    end
end
