class MedicinePdf < Prawn::Document
  def initialize(medicine, view)
    super()
    font "#{Prawn::DATADIR}/fonts/DejaVuSans.ttf"
    header
    text 'Podatki o zdravilu', align: :center, size: 28
    move_down 30
    @medicine = medicine
    @view = view
    font_size 20
    default_leading 5 #prostor med vrsticami
    #text "ID: #{@medicine.id}"
    text "Sifra: #{@medicine.medicineNumber}"
    text "Ime: #{@medicine.name}"
    if @medicine.inUse
      text "V uporabi: DA"
      @instr = MedicineInstruction.find(@medicine.medicine_instruction_id)
      if not @instr.deleted
        text @instr.url_string
      else
        text 'navodilo ni vec v uporabi'
      end
    else
      text "V uporabi: NE"
    end
  end

  def logo
    logopath = "#{Rails.root}/app/assets/images/health-icon.png"
    image logopath, :width => 64, :height => 64
  end

  def header
    float do
      logo
    end
    move_down 20
    text 'Zdravstveni informacijski sistem', align: :right, size: 29
    move_down 40
  end

  def method2
    stroke_axis
    stroke_circle [0, 0] , 10
    bounding_box( [100, 300], :width => 300, :height => 200) do
     stroke_bounds
      stroke_circle [0, 0], 10
    end
  end

end