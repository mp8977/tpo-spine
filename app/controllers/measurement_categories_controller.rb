class MeasurementCategoriesController < ApplicationController
  before_action :set_measurement_category, only: [:show, :edit, :update, :destroy]

  # GET /measurement_categories
  # GET /measurement_categories.json
  def index
    @measurement_categories = MeasurementCategory.all
  end

  # GET /measurement_categories/1
  # GET /measurement_categories/1.json
  def show
  end

  # GET /measurement_categories/new
  def new
    @measurement_category = MeasurementCategory.new
  end

  # GET /measurement_categories/1/edit
  def edit
  end

  # POST /measurement_categories
  # POST /measurement_categories.json
  def create
    @measurement_category = MeasurementCategory.new(measurement_category_params)

    respond_to do |format|
      if @measurement_category.save
        format.html { redirect_to @measurement_category, notice: 'Measurement category was successfully created.' }
        format.json { render :show, status: :created, location: @measurement_category }
      else
        format.html { render :new }
        format.json { render json: @measurement_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /measurement_categories/1
  # PATCH/PUT /measurement_categories/1.json
  def update
    respond_to do |format|
      if @measurement_category.update(measurement_category_params)
        format.html { redirect_to @measurement_category, notice: 'Measurement category was successfully updated.' }
        format.json { render :show, status: :ok, location: @measurement_category }
      else
        format.html { render :edit }
        format.json { render json: @measurement_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /measurement_categories/1
  # DELETE /measurement_categories/1.json
  def destroy
    @measurement_category.destroy
    respond_to do |format|
      format.html { redirect_to measurement_categories_url, notice: 'Measurement category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_measurement_category
      @measurement_category = MeasurementCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def measurement_category_params
      params.require(:measurement_category).permit(:name, :elements)
    end
end
