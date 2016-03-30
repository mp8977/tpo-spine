class DietChecksController < ApplicationController
  before_action :set_diet_check, only: [:show, :edit, :update, :destroy]

  # GET /diet_checks
  # GET /diet_checks.json
  def index
    @diet_checks = DietCheck.all
  end

  # GET /diet_checks/1
  # GET /diet_checks/1.json
  def show
  end

  # GET /diet_checks/new
  def new
    @diet_check = DietCheck.new
  end

  # GET /diet_checks/1/edit
  def edit
  end

  # POST /diet_checks
  # POST /diet_checks.json
  def create
    @diet_check = DietCheck.new(diet_check_params)

    respond_to do |format|
      if @diet_check.save
        format.html { redirect_to @diet_check, notice: 'Diet check was successfully created.' }
        format.json { render :show, status: :created, location: @diet_check }
      else
        format.html { render :new }
        format.json { render json: @diet_check.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diet_checks/1
  # PATCH/PUT /diet_checks/1.json
  def update
    respond_to do |format|
      if @diet_check.update(diet_check_params)
        format.html { redirect_to @diet_check, notice: 'Diet check was successfully updated.' }
        format.json { render :show, status: :ok, location: @diet_check }
      else
        format.html { render :edit }
        format.json { render json: @diet_check.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diet_checks/1
  # DELETE /diet_checks/1.json
  def destroy
    @diet_check.destroy
    respond_to do |format|
      format.html { redirect_to diet_checks_url, notice: 'Diet check was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diet_check
      @diet_check = DietCheck.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def diet_check_params
      params.require(:diet_check).permit(:name)
    end
end
