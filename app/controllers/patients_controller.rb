class PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :edit, :update, :destroy]

  # GET /patients
  # GET /patients.json
  def index
    @patients = Patient.all
  end

  # GET /patients/1
  # GET /patients/1.json
  def show
  end

  # GET /patients/new
  def new
    @patient = Patient.new
  end

  # GET /patients/1/edit
  def edit
  end

  # POST /patients
  # POST /patients.json
  def create
    @patient = Patient.new(patient_params)


    respond_to do |format|
      if @patient.save
       # if user_l
        format.html { redirect_to @patient, notice: 'Patient was successfully created.' }
        #format.json { render :show, status: :created, location: @patient }
      else
        format.html { render :new }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patients/1
  # PATCH/PUT /patients/1.json
  def update
    respond_to do |format|
      if @patient.update(patient_params)
        if  @current_user.nil?
          format.html { redirect_to controller: "patients", action: "confirmation" }
        else
          format.html { redirect_to @patient, notice: 'Patient was successfully updated.' }
          format.json { render :show, status: :ok, location: @patient }
        end
      else
        format.html { render :edit }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patients/1
  # DELETE /patients/1.json
  def destroy
    @patient.destroy
    respond_to do |format|
      format.html { redirect_to patients_url, notice: 'Patient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def confirmation
    @patient = Patient.find(params[:id]) # zakaj ne dela callback ?
    @current_email = User.find(@patient.id).email
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient
      @patient = Patient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patient_params
      params.require(:patient).permit(:id,:cardNumber, :lastName, :firstName, :birthDate, :sex,
                                      :phone, address_attributes:[:id,:streetName, :streetNumber,:post_id],
                                      contact_person_attributes:
                                          [:id,:lastName, :firstName, :phone, :relationship,address_attributes:
                                              [:id,:streetName, :streetNumber,:post_id]])
    end
end
