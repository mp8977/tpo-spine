class MeasurementPdf < Prawn::Document
  def initialize(resource, view)
    super()
    font "#{Prawn::DATADIR}/fonts/DejaVuSans.ttf"
    header
    text 'Podatki o meritvah', align: :center, size: 28
    move_down 30
    @measurement = resource
    @view = view
    font_size 20
    default_leading 5 #prostor med vrsticami
    text "Datum meritev: #{@measurement.format_date}"
    @part_measurements = PartMeasurement.where(measurement_id: @measurement.id)
    @part_measurements.each do |p|
      text "Ime meritve: #{p.name}"
      text "Enota: #{p.unit}"
      text "Kolicina: #{p.value}"
      @measurement_home = MeasurementHome.where(part_measurement_id: p.id).first
      if @measurement_home.blank?
        text "Podatki so bili izmerjeni pod nadzorom zdravnika"
        @measurement_doc = MeasurementDoc.where(part_measurement_id: p.id)
        @check_up = CheckUp.where(id: @measurement_doc.check_up_id).first
        @doctor = Doctor.where(@check_up.doctor_id).first
        text "Zdravnik: #{@doctor.full_name}"
      else
        text "Podatki so bili izmerjeni brez nadzora zdravnika"
        patient = Patient.where(id: @measurement_home.patient_id).first
        text "Vnesel pacient: #{patient.full_name}"
      end
    end
    if @measurement.deleted
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