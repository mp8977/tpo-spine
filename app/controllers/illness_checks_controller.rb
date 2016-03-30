class IllnessChecksController < ApplicationController
  before_action :set_illness_check, only: [:show, :edit, :update, :destroy]

  # GET /illness_checks
  # GET /illness_checks.json
  def index
    @illness_checks = IllnessCheck.all
  end

  # GET /illness_checks/1
  # GET /illness_checks/1.json
  def show
  end

  # GET /illness_checks/new
  def new
    @illness_check = IllnessCheck.new
  end

  # GET /illness_checks/1/edit
  def edit
  end

  # POST /illness_checks
  # POST /illness_checks.json
  def create
    @illness_check = IllnessCheck.new(illness_check_params)

    respond_to do |format|
      if @illness_check.save
        format.html { redirect_to @illness_check, notice: 'Illness check was successfully created.' }
        format.json { render :show, status: :created, location: @illness_check }
      else
        format.html { render :new }
        format.json { render json: @illness_check.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /illness_checks/1
  # PATCH/PUT /illness_checks/1.json
  def update
    respond_to do |format|
      if @illness_check.update(illness_check_params)
        format.html { redirect_to @illness_check, notice: 'Illness check was successfully updated.' }
        format.json { render :show, status: :ok, location: @illness_check }
      else
        format.html { render :edit }
        format.json { render json: @illness_check.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /illness_checks/1
  # DELETE /illness_checks/1.json
  def destroy
    @illness_check.destroy
    respond_to do |format|
      format.html { redirect_to illness_checks_url, notice: 'Illness check was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_illness_check
      @illness_check = IllnessCheck.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def illness_check_params
      params.require(:illness_check).permit(:name)
    end
end
