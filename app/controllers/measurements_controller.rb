class MeasurementsController < ApplicationController
  before_action :set_measurement, only: [:show, :edit, :update, :destroy]

  # GET /measurements
  # GET /measurements.json
  def index
    @measurements = Measurement.all
  end

  # GET /measurements/1.json
  def show
    if admin_signed_in?
      respond_to do |format|
        format.pdf do
          # disposition: :inline namesto download ti odpre v browserju
          pdf = MeasurementPdf.new(@measurement, view_context)
          send_data pdf.render, filename:
              "measurement_#{@measurement.created_at.strftime('%d/%m/%Y')}.pdf",
                    type: "application/pdf"
        end
      end
    end
  end

  #https://www.youtube.com/watch?v=j1zZ4Lgzf9s poglej za formo
  # GET /measurements/new
  def new
    @measurement = Measurement.new
    @part_measurement = @measurement.part_measurements.build
    #@measurement.part_measurements.build
    if user_signed_in?
      @part_measurement.build_measurement_home
    elsif doctor_signed_in?
      @part_measurement.build_measurement_doc
    end
  end

  # GET /measurements/1/edit
  def edit
  end

  # POST /measurements
  # POST /measurements.json
  def create
    if doctor_signed_in? or user_signed_in? or admin_signed_in?
      @measurement = Measurement.new(measurement_params)

      respond_to do |format|
        if @measurement.save
          flash[:notice] = 'Meritev je bila kreirana'
          if admin_signed_in?
            format.html { redirect_to controller: :admins, action: :sifranti }
          else
            format.html { redirect_to controller: :measurements, action: :new }
          end
        else
          format.html { render :new }
          format.json { render json: @measurement.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # PATCH/PUT /measurements/1
  # PATCH/PUT /measurements/1.json
  def update
    respond_to do |format|
      if @measurement.update(measurement_params)
        flash[:notice] = 'Meritev je bila uspesno posodobljena'
        if admin_signed_in?
          format.html { redirect_to controller: :admins, action: :sifranti }
        elsif doctor_signed_in?
          format.html { redirect_to controller: :measurements, action: :new }
        elsif user_signed_in?
          format.html { redirect_to controller: :measurements, action: :new }
        end
        format.json { render :show, status: :ok, location: @measurement }
      else
        format.html { render :edit }
        format.json { render json: @measurement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /measurements/1
  # DELETE /measurements/1.json
  def destroy
    if admin_signed_in?
      @measurement.deleted = true
      if @measurement.save
        flash[:notice] = 'Meritev je bila izbrisana'
        respond_to do |format|
          if admin_signed_in?
            format.html { redirect_to controller: :admins, action: :sifranti }
            format.json { head :no_content }
          end
        end
      end
    else
      puts 'admin ni vpisan..measurements_controller'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_measurement
      @measurement = Measurement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def measurement_params
      params.require(:measurement).permit(:date, part_measurements_attributes: [:name, :unit, :value,
                                                                    measurement_doc_attributes: [:check_up_id],
                                                                    measurement_home_attributes: [:patient_id]])
    end
end
