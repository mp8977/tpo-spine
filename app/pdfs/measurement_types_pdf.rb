class MeasurementTypesPdf < Prawn::Document
  def initialize(resource, view)
    super()
    font "#{Prawn::DATADIR}/fonts/DejaVuSans.ttf"
    header
    text 'Podatki o vrsti meritve', align: :center, size: 28
    move_down 30
    @measurement_type = resource
    @view = view
    font_size 20
    default_leading 5 #prostor med vrsticami
    text "Ime: #{@measurement_type.name}"
    text "Min: #{@measurement_type.min_value}"
    text "Max: #{@measurement_type.max_value}"
    if @measurement_type.deleted
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