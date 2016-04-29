class IllnessesController < ApplicationController
  before_action :set_illness, only: [:show, :edit, :update, :destroy]

  # GET /illnesses
  # GET /illnesses.json
  def index
    @illnesses = Illness.all
  end

  # GET /illnesses/1.pdf
  def show
    if admin_signed_in?
      respond_to do |format|
        format.pdf do
          # disposition: :inline namesto download ti odpre v browserju
          pdf = IllnessPdf.new(@illness, view_context)
          send_data pdf.render, filename:
              "illness_#{@illness.created_at.strftime('%d/%m/%Y')}.pdf",
                    type: "application/pdf"
        end
      end
    end
  end

  # GET /illnesses/new
  def new
    @illness = Illness.new
  end

  # GET /illnesses/1/edit
  def edit
  end

  # POST /illnesses
  # POST /illnesses.json
  def create
    @illness = Illness.new(illness_params)

    respond_to do |format|
      if @illness.save
        flash[:notice] = 'Bolezen je bila uspesno kreirana'
        format.html { redirect_to controller: :admins, action: :sifranti }
      else
        format.html { render :new }
        format.json { render json: @illness.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /illnesses/1
  # PATCH/PUT /illnesses/1.json
  def update
    respond_to do |format|
      if @illness.update(illness_params)
        flash[:notice] = 'Bolezen je bila posodobljena'
        format.html { redirect_to controller: :admins, action: :sifranti }
        #format.json { render :show, status: :ok, location: @illness }
      else
        format.html { render :edit }
        format.json { render json: @illness.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /illnesses/1
  # DELETE /illnesses/1.json
  def destroy
    @illness.deleted = true
    if @illness.save
      flash[:notice] = 'Bolezen je bila uspesno izbrisana'
      respond_to do |format|
        format.html { redirect_to controller: :admins, action: :sifranti }
        format.json { head :no_content }
      end
    else
      puts 'tezava pri brisanju bolezni'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_illness
      @illness = Illness.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def illness_params
      if admin_signed_in?
        params.require(:illness).permit(:illnessNumber, :name, :isAllergy, :deleted)
      else
        params.require(:illness).permit(:illnessNumber, :name, :isAllergy)
      end
    end
end
