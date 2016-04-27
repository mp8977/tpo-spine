class NursesController < ApplicationController
  before_action :set_nurse, only: [:show, :edit, :update, :destroy]

  # GET /nurses
  # GET /nurses.json
  def index
    @nurses = Nurse.all
  end

  # GET /nurses/1
  # GET /nurses/1.json
  def show
  end

  # GET /nurses/new
  def new
    @nurse = Nurse.new
  end

  # GET /nurses/1/edit
  def edit
  end

  # POST /nurses
  # POST /nurses.json
 # def create
 #   puts 'devise skrbi za kreiranje'
 # end

  # PATCH/PUT /nurses/1
  # PATCH/PUT /nurses/1.json
  def update
    respond_to do |format|
      if @nurse.update(nurse_params)
        flash[:notice] = 'Profil medicinske sestre je bil posodobljen'
        if admin_signed_in?
          format.html { redirect_to controller: "admins", action: "sifranti"}
        else
          format.html { redirect_to controller: "nurses", action: "edit", id: nurse.id}
        end
        format.json { render :show, status: :ok, location: @nurse }
      else
        format.html { render :edit }
        format.json { render json: @nurse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nurses/1
  # DELETE /nurses/1.json
  def destroy
    @nurse.deleted = true
    if @nurse.save
      flash[:notice] = 'Medicinska sestra je bila uspesno izbrisana'
      respond_to do |format|
        if admin_signed_in?
          format.html { redirect_to controller: :admins, action: :sifranti }
          format.json { head :no_content }
        else # zbrise se sestra sama
          puts 'ce ne dela, dodaj spodaj private metodo iz user_controller: after_sign_out_path_for'
          sign_out_and_redirect(@nurse)
        end
      end
    else
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nurse
      @nurse = Nurse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nurse_params
      if admin_signed_in?
        params.require(:nurse).permit(:nurseNumber, :email, :password, :lastName, :firstName, :phone, :hospital_id, :deleted)
      else
        params.require(:nurse).permit(:nurseNumber, :email, :password, :lastName, :firstName, :phone, :hospital_id)
      end
    end
end
