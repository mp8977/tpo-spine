class MeasurementDocsController < ApplicationController
  before_action :set_measurement_doc, only: [:show, :edit, :update, :destroy]

  # GET /measurement_docs
  # GET /measurement_docs.json
  def index
    @measurement_docs = MeasurementDoc.all
  end

  # GET /measurement_docs/1
  # GET /measurement_docs/1.json
  def show
  end

  # GET /measurement_docs/new
  def new
    @measurement_doc = MeasurementDoc.new
  end

  # GET /measurement_docs/1/edit
  def edit
  end

  # POST /measurement_docs
  # POST /measurement_docs.json
  def create
    @measurement_doc = MeasurementDoc.new(measurement_doc_params)

    respond_to do |format|
      if @measurement_doc.save
        format.html { redirect_to @measurement_doc, notice: 'Measurement doc was successfully created.' }
        format.json { render :show, status: :created, location: @measurement_doc }
      else
        format.html { render :new }
        format.json { render json: @measurement_doc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /measurement_docs/1
  # PATCH/PUT /measurement_docs/1.json
  def update
    respond_to do |format|
      if @measurement_doc.update(measurement_doc_params)
        format.html { redirect_to @measurement_doc, notice: 'Measurement doc was successfully updated.' }
        format.json { render :show, status: :ok, location: @measurement_doc }
      else
        format.html { render :edit }
        format.json { render json: @measurement_doc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /measurement_docs/1
  # DELETE /measurement_docs/1.json
  def destroy
    @measurement_doc.destroy
    respond_to do |format|
      format.html { redirect_to measurement_docs_url, notice: 'Measurement doc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_measurement_doc
      @measurement_doc = MeasurementDoc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def measurement_doc_params
      params.fetch(:measurement_doc, {})
    end
end
