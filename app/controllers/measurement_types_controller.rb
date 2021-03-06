class MeasurementTypesController < ApplicationController
  before_action :set_measurement_type, only: [:show, :edit, :update, :destroy]

  # GET /measurement_types
  # GET /measurement_types.json
  def index
    @measurement_types = MeasurementType.all
  end

  # GET /measurement_types/1.json
  def show
    if admin_signed_in?
      respond_to do |format|
        format.pdf do
          # disposition: :inline namesto download ti odpre v browserju
          pdf = MeasurementTypesPdf.new(@measurement_type, view_context)
          send_data pdf.render, filename:
              "measurement_type_#{@measurement_type.created_at.strftime('%d/%m/%Y')}.pdf",
                    type: "application/pdf"
        end
      end
    end
  end

  # GET /measurement_types/new
  def new
    @measurement_type = MeasurementType.new
  end

  # GET /measurement_types/1/edit
  def edit
  end

  # POST /measurement_types
  # POST /measurement_types.json
  def create
    @measurement_type = MeasurementType.new(measurement_type_params)
    measurement_type_params[:measurement_category_id]
    m_cat = MeasurementCategory.where(id: measurement_type_params[:measurement_category_id]).first
    m_cat.elements = m_cat.elements + 1
    if not m_cat.save
      puts 'tezava pri posodabljanju stevila elementov za measurementCategory v measurementTypeController'
    end


    respond_to do |format|
      if @measurement_type.save
        flash[:notice] = 'Element meritve je bil uspesno kreiran'
        format.html { redirect_to controller: :admins, action: :sifranti }
      else
        format.html { render :new }
        format.json { render json: @measurement_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /measurement_types/1
  # PATCH/PUT /measurement_types/1.json
  def update
    if params[:measurement_type][:measurement_category_id] != @measurement_type.measurement_category_id
      # odstej trenutni enega
      trenutna_kategorija = MeasurementCategory.where(id: @measurement_type.measurement_category_id).first
      trenutna_kategorija.update(elements: (trenutna_kategorija.elements-1))
      # pristej novi enega
      nova_kategorija = MeasurementCategory.where(id: params[:measurement_type][:measurement_category_id]).first
      nova_kategorija.update(elements: (nova_kategorija.elements+1))
    end
    respond_to do |format|
      if @measurement_type.update(measurement_type_params)
        flash[:notice] = 'Element meritve je bil posodobljen'
        format.html { redirect_to controller: :admins, action: :sifranti }
        #format.json { render :show, status: :ok, location: @measurement_type }
      else
        format.html { render :edit }
        format.json { render json: @measurement_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /measurement_types/1
  # DELETE /measurement_types/1.json
  def destroy
    m_cat = MeasurementCategory.where(id: @measurement_type.measurement_category_id).first
    m_cat.elements = m_cat.elements - 1
    if not m_cat.save
      puts 'tezava pri posodabljanju stevila elementov za measurementCategory v measurementTypeController'
    end
    @measurement_type.deleted = true
    if @measurement_type.save
      flash[:notice] = 'Element meritve je bil uspesno izbrisan'
      respond_to do |format|
        format.html { redirect_to controller: :admins, action: :sifranti }
        format.json { head :no_content }
      end
    else
      puts 'tezava pri brisanju elementa meritve'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_measurement_type
      @measurement_type = MeasurementType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def measurement_type_params
      params.require(:measurement_type).permit(:name, :min_value, :min_value, :max_value, :max_value, :unit, :measurement_category_id, :deleted)
    end
end
