class DoctorHasNursesController < ApplicationController
  before_action :set_doctor_has_nurse, only: [:show, :edit, :update, :destroy]

  # GET /doctor_has_nurses
  # GET /doctor_has_nurses.json
  def index
    @doctor_has_nurses = DoctorHasNurse.all
  end

  # GET /doctor_has_nurses/1
  # GET /doctor_has_nurses/1.json
  def show
  end

  # GET /doctor_has_nurses/new
  def new
    @doctor_has_nurse = DoctorHasNurse.new
  end

  # GET /doctor_has_nurses/1/edit
  def edit
  end

  # POST /doctor_has_nurses
  # POST /doctor_has_nurses.json
  def create
    @doctor_has_nurse = DoctorHasNurse.new(doctor_has_nurse_params)

    respond_to do |format|
      if @doctor_has_nurse.save
        format.html { redirect_to @doctor_has_nurse, notice: 'Doctor has nurse was successfully created.' }
        format.json { render :show, status: :created, location: @doctor_has_nurse }
      else
        format.html { render :new }
        format.json { render json: @doctor_has_nurse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /doctor_has_nurses/1
  # PATCH/PUT /doctor_has_nurses/1.json
  def update
    respond_to do |format|
      if @doctor_has_nurse.update(doctor_has_nurse_params)
        format.html { redirect_to @doctor_has_nurse, notice: 'Doctor has nurse was successfully updated.' }
        format.json { render :show, status: :ok, location: @doctor_has_nurse }
      else
        format.html { render :edit }
        format.json { render json: @doctor_has_nurse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doctor_has_nurses/1
  # DELETE /doctor_has_nurses/1.json
  def destroy
    @doctor_has_nurse.destroy
    respond_to do |format|
      format.html { redirect_to doctor_has_nurses_url, notice: 'Doctor has nurse was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doctor_has_nurse
      @doctor_has_nurse = DoctorHasNurse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doctor_has_nurse_params
      params.fetch(:doctor_has_nurse, {})
    end
end
