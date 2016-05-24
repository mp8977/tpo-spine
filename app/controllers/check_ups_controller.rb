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
    @md=@check_up.measurement_docs.build
    @pm=@md.build_part_measurement


    #to je blo vse narjen za measurement
    #
    #@headers =['Glukoza','Srčni tlak','Telesna temperatura', 'Telesna teža']
    #units=['mmol/l','mmHg','BPM (beats per minute)','°C','kg']
    #names_doctor=[['Glukoza'],['Diastolični tlak', 'Siastolični talk', 'Srčni utrip'],['Telesna temperatura'],['Telesna teža']]
    #names_pacient = [
    #  ['Meritev pred zajtrkom',
    #   'Meritev po zajtrku',
    #   'Meritev pred kosilom',
    #   'Meritev po kosilu',
    #   'Meritev pred večerjo',
    #   'Meritev po večerji',
    #   'Meritev pred spanjem'
    #  ],
    #  ['Diastolični tlak zjutraj',
    #   'Siastolični talk zjutraj',
    #   'Diastolični tlak zvečer',
    #   'Siastolični tlak zvečer',
    #   'Srčni utrip zjutraj',
    #   'Srčni utrip zvečer'
    #  ],
    #  ['Prva meritev',
    #   'Druga meritev',
    #   'Tretja meritev'
    #  ],
    #  ['Meritev telesne teže'
    #  ]
    #]
    #names=names_doctor
    #i = 0
    #st_units = 0
    #names.length.times do
    #  @measurements=@check_up.measurements.build
    #  j = 0
    #  names[i].length.times do
    #    @part_measurements=@measurements.part_measurements.build
    #    @part_measurements.build_measurement_doc#
    #    @part_measurements.name = names[i][j]
    #    #if stavk morm popravt k bom delala meritve za pacienta ker jih je vec
    #    if i==1 && j==2
    #      st_units+=1
    #    end
    #    @part_measurements.unit =units[st_units]
    #    j+=1
    #  end
    #  st_units+=1
    #  i+=1
    #end
  end

  # GET /check_ups/1/edit
  def edit
  end

  # POST /check_ups
  # POST /check_ups.json
  def create
    # diete

    #array id-jev od diet
    diets=check_up_params[:diet_ids]
    puts diets
    #lahko poslem prazno vrednost namest id-ja(ne shrani se) tega zato nerabm delat
    #len=diets.size-2
    #array=diets[0..len]
    #array_ids=array | array
    #da odstranm podvojene id-je vzame samo eno instanco
    array_diet_ids=diets | diets
    #v parameter diet_ids dam array k nima ponavljajočih id-jev
    params[:check_up][:diet_ids]=array_diet_ids
    #puts check_up_params[:diet_ids]

    #bolezni
    illnesses=check_up_params[:illness_ids]
    array_illness_ids=illnesses |illnesses
    params[:check_up][:illness_ids]=array_illness_ids
    #puts check_up_params[:illness_ids]

    #zdravila
    medicines=check_up_params[:medicine_ids]
    array_medicine_ids=medicines | medicines
    params[:check_up][:medicine_ids]=array_medicine_ids
    #puts check_up_params[:medicine_ids]
    #medicine.uniq ne dela ce je nil class

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

 # measurements_attributes: [:id,:date,
 #                           part_measurements_attributes: [:id,:unit, :name, :value,
 #                                        measurement_doc_attributes: [:id]]])

 #"#{ }"#measurement_docs_attributes: [:id,:name,
 #                              part_measurement_attributes: [:id,:unit, :name, :value]])
  def check_up_params
    params.require(:check_up).permit(:date, :patient_id, :doctor_id, :diet_ids => [],:illness_ids => [],:medicine_ids => [],
                                     measurement_docs_attributes: [:id,:name,
                                                                              part_measurement_attributes: [:id,:unit, :name, :value]])

  end
end
