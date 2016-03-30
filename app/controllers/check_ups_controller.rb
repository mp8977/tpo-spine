class CheckUpsController < ApplicationController
  before_action :set_check_up, only: [:show, :edit, :update, :destroy]

  # GET /check_ups
  # GET /check_ups.json
  def index
    @check_ups = CheckUp.all
  end

  # GET /check_ups/1
  # GET /check_ups/1.json
  def show
  end

  # GET /check_ups/new
  def new
    @check_up = CheckUp.new
  end

  # GET /check_ups/1/edit
  def edit
  end

  # POST /check_ups
  # POST /check_ups.json
  def create
    @check_up = CheckUp.new(check_up_params)

    respond_to do |format|
      if @check_up.save
        format.html { redirect_to @check_up, notice: 'Check up was successfully created.' }
        format.json { render :show, status: :created, location: @check_up }
      else
        format.html { render :new }
        format.json { render json: @check_up.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /check_ups/1
  # PATCH/PUT /check_ups/1.json
  def update
    respond_to do |format|
      if @check_up.update(check_up_params)
        format.html { redirect_to @check_up, notice: 'Check up was successfully updated.' }
        format.json { render :show, status: :ok, location: @check_up }
      else
        format.html { render :edit }
        format.json { render json: @check_up.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /check_ups/1
  # DELETE /check_ups/1.json
  def destroy
    @check_up.destroy
    respond_to do |format|
      format.html { redirect_to check_ups_url, notice: 'Check up was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_check_up
      @check_up = CheckUp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def check_up_params
      params.require(:check_up).permit(:date)
    end
end
