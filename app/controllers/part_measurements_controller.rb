class PartMeasurementsController < ApplicationController
  before_action :set_part_measurement, only: [:show, :edit, :update, :destroy]

  # GET /part_measurements
  # GET /part_measurements.json
  def index
    @part_measurements = PartMeasurement.all
  end

  # GET /part_measurements/1
  # GET /part_measurements/1.json
  def show
  end

  # GET /part_measurements/new
  def new
    @part_measurement = PartMeasurement.new
  end

  # GET /part_measurements/1/edit
  def edit
  end

  # POST /part_measurements
  # POST /part_measurements.json
  def create
    @part_measurement = PartMeasurement.new(part_measurement_params)

    respond_to do |format|
      if @part_measurement.save
        format.html { redirect_to @part_measurement, notice: 'Part measurement was successfully created.' }
        format.json { render :show, status: :created, location: @part_measurement }
      else
        format.html { render :new }
        format.json { render json: @part_measurement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /part_measurements/1
  # PATCH/PUT /part_measurements/1.json
  def update
    respond_to do |format|
      if @part_measurement.update(part_measurement_params)
        format.html { redirect_to @part_measurement, notice: 'Part measurement was successfully updated.' }
        format.json { render :show, status: :ok, location: @part_measurement }
      else
        format.html { render :edit }
        format.json { render json: @part_measurement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /part_measurements/1
  # DELETE /part_measurements/1.json
  def destroy
    @part_measurement.destroy
    respond_to do |format|
      format.html { redirect_to part_measurements_url, notice: 'Part measurement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_part_measurement
      @part_measurement = PartMeasurement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def part_measurement_params
      params.require(:part_measurement).permit(:name, :unit, :value)
    end
end
