class DietsController < ApplicationController
  before_action :set_diet, only: [:show, :edit, :update, :destroy]

  # GET /diets
  # GET /diets.json
  def index
    @diets = Diet.all
  end

  # GET /diets/1
  # GET /diets/1.json
  def show
  end

  # GET /diets/new
  def new
    @diet = Diet.new
  end

  # GET /diets/1/edit
  def edit
  end

  # POST /diets
  # POST /diets.json
  def create
    @diet = Diet.new(diet_params)

    respond_to do |format|
      if @diet.save
        flash[:notice] = 'Dieta je bila uspesno kreirana'
        format.html { redirect_to controller: :admins, action: :sifranti }
      else
        format.html { render :new }
        format.json { render json: @diet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diets/1
  # PATCH/PUT /diets/1.json
  def update
    respond_to do |format|
      if @diet.update(diet_params)
        flash[:notice] = 'Dieta je bila posodobljena'
        format.html { redirect_to controller: :admins, action: :sifranti }
      else
        format.html { render :edit }
        format.json { render json: @diet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diets/1
  # DELETE /diets/1.json
  def destroy
    @diet.deleted = true
    if @diet.save
      flash[:notice] = 'Dieta je bila uspesno izbrisana'
      respond_to do |format|
        format.html { redirect_to controller: :admins, action: :sifranti }
        format.json { head :no_content }
      end
    else
      puts 'tezava pri brisanju diete'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diet
      @diet = Diet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def diet_params
      if admin_signed_in?
        params.require(:diet).permit(:dietNumber, :name, :deleted)
      else
        params.require(:diet).permit(:dietNumber, :name)
      end
    end
end
