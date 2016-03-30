class DietInstructionsController < ApplicationController
  before_action :set_diet_instruction, only: [:show, :edit, :update, :destroy]

  # GET /diet_instructions
  # GET /diet_instructions.json
  def index
    @diet_instructions = DietInstruction.all
  end

  # GET /diet_instructions/1
  # GET /diet_instructions/1.json
  def show
  end

  # GET /diet_instructions/new
  def new
    @diet_instruction = DietInstruction.new
  end

  # GET /diet_instructions/1/edit
  def edit
  end

  # POST /diet_instructions
  # POST /diet_instructions.json
  def create
    @diet_instruction = DietInstruction.new(diet_instruction_params)

    respond_to do |format|
      if @diet_instruction.save
        format.html { redirect_to @diet_instruction, notice: 'Diet instruction was successfully created.' }
        format.json { render :show, status: :created, location: @diet_instruction }
      else
        format.html { render :new }
        format.json { render json: @diet_instruction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diet_instructions/1
  # PATCH/PUT /diet_instructions/1.json
  def update
    respond_to do |format|
      if @diet_instruction.update(diet_instruction_params)
        format.html { redirect_to @diet_instruction, notice: 'Diet instruction was successfully updated.' }
        format.json { render :show, status: :ok, location: @diet_instruction }
      else
        format.html { render :edit }
        format.json { render json: @diet_instruction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diet_instructions/1
  # DELETE /diet_instructions/1.json
  def destroy
    @diet_instruction.destroy
    respond_to do |format|
      format.html { redirect_to diet_instructions_url, notice: 'Diet instruction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diet_instruction
      @diet_instruction = DietInstruction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def diet_instruction_params
      params.require(:diet_instruction).permit(:url)
    end
end
