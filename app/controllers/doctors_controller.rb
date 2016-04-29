class DoctorsController < ApplicationController
  before_action :set_doctor, only: [:show, :edit, :update, :destroy]

  # GET /doctors
  # GET /doctors.json
  def index
    @doctors = Doctor.all
  end

  # GET /doctors/1.pdf
  def show
    if admin_signed_in?
      respond_to do |format|
        format.pdf do
          # disposition: :inline namesto download ti odpre v browserju
          pdf = DoctorPdf.new(@doctor, view_context)
          send_data pdf.render, filename:
              "doctor_#{@doctor.created_at.strftime('%d/%m/%Y')}.pdf",
                    type: "application/pdf"
        end
      end
    end
  end

  # GET /doctors/new
  def new
    @doctor = Doctor.new
  end

  # GET /doctors/1/edit
  def edit
  end

  # POST /doctors
  # POST /doctors.json
#  def create
#    puts 'devise skrbi za kreiranje'
#  end

  # PATCH/PUT /doctors/1
  # PATCH/PUT /doctors/1.json
  def update
    respond_to do |format|
      if @doctor.update(doctor_params)
        flash[:notice] = 'Profil zdravnika je bil posodobljen'
        if admin_signed_in?
          format.html { redirect_to controller: "admins", action: "sifranti"}
        else
          format.html { redirect_to controller: "doctors", action: "edit", id: @doctor.id}
        end
        format.json { render :show, status: :ok, location: @doctor }
      else
        format.html { render :edit }
        format.json { render json: @doctor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doctors/1
  # DELETE /doctors/1.json
  def destroy
    @doctor.deleted = true
    if @doctor.save
      flash[:notice] = 'Zdravnik je bil uspesno izbrisan'
      respond_to do |format|
        if admin_signed_in?
          format.html { redirect_to controller: :admins, action: :sifranti }
          format.json { head :no_content }
        else # zbrise se zdravnik sam
          puts 'ce ne dela, dodaj spodaj private metodo iz user_controller: after_sign_out_path_for'
          sign_out_and_redirect(@doctor)
        end
      end
    else
      flash[:notice] = 'Tezava pri brisanju zdravnika'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doctor
      @doctor = Doctor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doctor_params
      if admin_signed_in?
        params.require(:doctor).permit(:doctorNumber, :category, :email, :password, :lastName, :firstName, :phone, :limitPatient, :hospital_id, :deleted)
      else
        params.require(:doctor).permit(:doctorNumber, :category, :email, :password, :lastName, :firstName, :phone, :limitPatient, :hospital_id)
      end
    end
end
