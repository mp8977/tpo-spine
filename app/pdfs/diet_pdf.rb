class DietPdf < Prawn::Document

  def initialize(resource, view)
    super()
    header
    text 'Podatki o dieti', align: :center, size: 28
    move_down 30
    @diet = resource
    @view = view
    font_size 20
    default_leading 5 #prostor med vrsticami
    #text "ID: #{@medicine.id}"
    text "Sifra: #{@diet.dietNumber}"
    text "Ime: #{@diet.name}"
    text "Navodila: "
    @diet.diet_instructions.each do |d|
      text d.url_string
    end
    if @diet.deleted
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
    text 'Zdravstveni informacijski sistem', align: :right, size: 33
    move_down 40
  end

end