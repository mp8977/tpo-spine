class PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :edit, :update, :destroy]


  # GET /patients
  # GET /patients.json
  def index
    @user = current_user
    @patients = @user.patients
  end

  # GET /patients/1
  # GET /patients/1.json
  def show
  end

  # GET /patients/new
  def new
    @patient = Patient.new
    @patient.build_address
    @contact_person=@patient.build_contact_person
    @contact_person.build_address
  end

  # GET /patients/1/edit
  def edit
  end

  # POST /patients
  # POST /patients.json
  def create
    @patient = Patient.new(patient_params)
    @patient.user_id=current_user.id

    respond_to do |format|
      if @patient.save
        flash[:notice] = 'Pacient je bil uspešno kreiran.'
        if current_user.count_patients == 1
          format.html { redirect_to controller: :patients, action: :edit, id: current_user.find_only_one_patient.id }
        else
          format.html { redirect_to controller: :patients, action: :index }
        end
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
        if  !user_signed_in?
          format.html { redirect_to root_path }
        else
          flash[:notice] = 'Pacient je bil uspešno posodobljen.'
          if current_user.count_patients == 1
            format.html { redirect_to controller: :patients, action: :edit, id: current_user.find_only_one_patient.id }
          else
            format.html { redirect_to controller: :patients, action: :index }
          end
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
    puts @patient.id
    @patient.deleted = true
    if @patient.save
      flash[:notice] = 'Pacient je bil uspešno izbrisan'
      if current_user.count_patients == 1
        redirect_to controller: :patients, action: :edit, id: current_user.find_only_one_patient.id
      else
        redirect_to controller: :patients, action: :index
      end
    else
      flash[:notice] = "Tezave pri brisanju pacienta"
      puts "Tezave pri brisanju pacienta"
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
