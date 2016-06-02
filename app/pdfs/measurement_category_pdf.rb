class MeasurementCategoryPdf < Prawn::Document
  def initialize(resource, view)
    super()
    font "#{Prawn::DATADIR}/fonts/DejaVuSans.ttf"
    header
    text 'Podatki o kategoriji meritev', align: :center, size: 28
    move_down 30
    @category = resource
    @view = view
    font_size 20
    default_leading 5 #prostor med vrsticami
    #text "ID: #{@medicine.id}"
    text "Ime: #{@category.name}"
    text "Stevilo delnih meritev: #{@category.elements}"
    if @category.deleted
      text "Izbrisana: DA"
    else
      text "Izbrisana: NE"
    end
    @types = MeasurementType.where(measurement_category_id: @category.id)
    indent(20) do
      @types.each do |t|
        text "Ime delne meritve: #{t.name}"
        text "Min vrednost: #{t.min_value}"
        text "Max vrednost: #{t.max_value}"
        text "Enota: #{t.unit}"
      end
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