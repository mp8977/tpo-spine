class DoctorHasPatientsController < ApplicationController
  before_action :set_doctor_has_patient, only: [:show, :edit, :update, :destroy]

  # GET /doctor_has_patients
  # GET /doctor_has_patients.json
  def index
    @doctor_has_patients = DoctorHasPatient.all
  end

  # GET /doctor_has_patients/1
  # GET /doctor_has_patients/1.json
  def show
  end

  # GET /doctor_has_patients/new
  def new
    @doctor_has_patient = DoctorHasPatient.new
  end

  # GET /doctor_has_patients/1/edit
  def edit
  end

  # POST /doctor_has_patients
  # POST /doctor_has_patients.json
  def create
    @doctor_has_patient = DoctorHasPatient.new(doctor_has_patient_params)

    respond_to do |format|
      if @doctor_has_patient.save
        format.html { redirect_to @doctor_has_patient, notice: 'Doctor has patient was successfully created.' }
        format.json { render :show, status: :created, location: @doctor_has_patient }
      else
        format.html { render :new }
        format.json { render json: @doctor_has_patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /doctor_has_patients/1
  # PATCH/PUT /doctor_has_patients/1.json
  def update
    respond_to do |format|
      if @doctor_has_patient.update(doctor_has_patient_params)
        format.html { redirect_to @doctor_has_patient, notice: 'Doctor has patient was successfully updated.' }
        format.json { render :show, status: :ok, location: @doctor_has_patient }
      else
        format.html { render :edit }
        format.json { render json: @doctor_has_patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doctor_has_patients/1
  # DELETE /doctor_has_patients/1.json
  def destroy
    @doctor_has_patient.destroy
    respond_to do |format|
      format.html { redirect_to doctor_has_patients_url, notice: 'Doctor has patient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doctor_has_patient
      @doctor_has_patient = DoctorHasPatient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doctor_has_patient_params
      params.fetch(:doctor_has_patient, {})
    end
end
