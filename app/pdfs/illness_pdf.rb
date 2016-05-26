class IllnessPdf < Prawn::Document
  def initialize(resource, view)
    super()
    font "#{Prawn::DATADIR}/fonts/DejaVuSans.ttf"
    header
    text 'Podatki o bolezni', align: :center, size: 28
    move_down 30
    @illness = resource
    @view = view
    font_size 20
    default_leading 5 #prostor med vrsticami
    #text "ID: #{@medicine.id}"
    text "Sifra: #{@illness.illnessNumber}"
    text "Ime: #{@illness.name}"
    if @illness.isAllergy
      text "Alergija: DA"
    else
      text "Alergija: NE"
    end
    if @illness.deleted
      text "Izbrisana: DA"
    else
      text "Izbrisana: NE"
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
end