class MedicineInstructionsController < ApplicationController
  before_action :set_medicine_instruction, only: [:show, :edit, :update, :destroy]

  # GET /medicine_instructions
  # GET /medicine_instructions.json
  def index
    @medicine_instructions = MedicineInstruction.all
  end

  # GET /medicine_instructions/1
  # GET /medicine_instructions/1.json
  def show
  end

  # GET /medicine_instructions/new
  def new
    @medicine_instruction = MedicineInstruction.new
  end

  # GET /medicine_instructions/1/edit
  def edit
  end

  # POST /medicine_instructions
  # POST /medicine_instructions.json
  def create
    @medicine_instruction = MedicineInstruction.new(medicine_instruction_params)

    respond_to do |format|
      if @medicine_instruction.save
        format.html { redirect_to @medicine_instruction, notice: 'Medicine instruction was successfully created.' }
        format.json { render :show, status: :created, location: @medicine_instruction }
      else
        format.html { render :new }
        format.json { render json: @medicine_instruction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medicine_instructions/1
  # PATCH/PUT /medicine_instructions/1.json
  def update
    respond_to do |format|
      if @medicine_instruction.update(medicine_instruction_params)
        format.html { redirect_to @medicine_instruction, notice: 'Medicine instruction was successfully updated.' }
        format.json { render :show, status: :ok, location: @medicine_instruction }
      else
        format.html { render :edit }
        format.json { render json: @medicine_instruction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medicine_instructions/1
  # DELETE /medicine_instructions/1.json
  def destroy
    @medicine_instruction.destroy
    respond_to do |format|
      format.html { redirect_to medicine_instructions_url, notice: 'Medicine instruction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medicine_instruction
      @medicine_instruction = MedicineInstruction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def medicine_instruction_params
      params.require(:medicine_instruction).permit(:url)
    end
end
