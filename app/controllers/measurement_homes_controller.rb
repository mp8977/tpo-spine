class MeasurementHomesController < ApplicationController
  before_action :set_measurement_home, only: [:show, :edit, :update, :destroy]

  # GET /measurement_homes
  # GET /measurement_homes.json
  def index
    @measurement_homes = MeasurementHome.all
  end

  # GET /measurement_homes/1
  # GET /measurement_homes/1.json
  def show
  end

  # GET /measurement_homes/new
  def new
    @measurement_home = MeasurementHome.new
  end

  # GET /measurement_homes/1/edit
  def edit
  end

  # POST /measurement_homes
  # POST /measurement_homes.json
  def create
    @measurement_home = MeasurementHome.new(measurement_home_params)

    respond_to do |format|
      if @measurement_home.save
        format.html { redirect_to @measurement_home, notice: 'Measurement home was successfully created.' }
        format.json { render :show, status: :created, location: @measurement_home }
      else
        format.html { render :new }
        format.json { render json: @measurement_home.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /measurement_homes/1
  # PATCH/PUT /measurement_homes/1.json
  def update
    respond_to do |format|
      if @measurement_home.update(measurement_home_params)
        format.html { redirect_to @measurement_home, notice: 'Measurement home was successfully updated.' }
        format.json { render :show, status: :ok, location: @measurement_home }
      else
        format.html { render :edit }
        format.json { render json: @measurement_home.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /measurement_homes/1
  # DELETE /measurement_homes/1.json
  def destroy
    @measurement_home.destroy
    respond_to do |format|
      format.html { redirect_to measurement_homes_url, notice: 'Measurement home was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_measurement_home
      @measurement_home = MeasurementHome.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def measurement_home_params
      params.fetch(:measurement_home, {})
    end
end
