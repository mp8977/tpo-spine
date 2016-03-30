class DiagnoseHasMedicinesController < ApplicationController
  before_action :set_diagnose_has_medicine, only: [:show, :edit, :update, :destroy]

  # GET /diagnose_has_medicines
  # GET /diagnose_has_medicines.json
  def index
    @diagnose_has_medicines = DiagnoseHasMedicine.all
  end

  # GET /diagnose_has_medicines/1
  # GET /diagnose_has_medicines/1.json
  def show
  end

  # GET /diagnose_has_medicines/new
  def new
    @diagnose_has_medicine = DiagnoseHasMedicine.new
  end

  # GET /diagnose_has_medicines/1/edit
  def edit
  end

  # POST /diagnose_has_medicines
  # POST /diagnose_has_medicines.json
  def create
    @diagnose_has_medicine = DiagnoseHasMedicine.new(diagnose_has_medicine_params)

    respond_to do |format|
      if @diagnose_has_medicine.save
        format.html { redirect_to @diagnose_has_medicine, notice: 'Diagnose has medicine was successfully created.' }
        format.json { render :show, status: :created, location: @diagnose_has_medicine }
      else
        format.html { render :new }
        format.json { render json: @diagnose_has_medicine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diagnose_has_medicines/1
  # PATCH/PUT /diagnose_has_medicines/1.json
  def update
    respond_to do |format|
      if @diagnose_has_medicine.update(diagnose_has_medicine_params)
        format.html { redirect_to @diagnose_has_medicine, notice: 'Diagnose has medicine was successfully updated.' }
        format.json { render :show, status: :ok, location: @diagnose_has_medicine }
      else
        format.html { render :edit }
        format.json { render json: @diagnose_has_medicine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diagnose_has_medicines/1
  # DELETE /diagnose_has_medicines/1.json
  def destroy
    @diagnose_has_medicine.destroy
    respond_to do |format|
      format.html { redirect_to diagnose_has_medicines_url, notice: 'Diagnose has medicine was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diagnose_has_medicine
      @diagnose_has_medicine = DiagnoseHasMedicine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def diagnose_has_medicine_params
      params.fetch(:diagnose_has_medicine, {})
    end
end
