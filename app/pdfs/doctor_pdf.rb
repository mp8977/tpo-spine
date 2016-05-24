class DoctorPdf < Prawn::Document
  def initialize(resource, view)
    super()
    font "#{Prawn::DATADIR}/fonts/DejaVuSans.ttf"
    header
    text 'Podatki o zdravniku', align: :center, size: 28
    move_down 30
    @doctor = resource
    @view = view
    font_size 20
    default_leading 5 #prostor med vrsticami
    text "Sifra: #{@doctor.doctorNumber}"
    text "Ime in priimek: #{@doctor.firstName} #{@doctor.lastName}"
    text "Email: #{@doctor.email}"
    text "Specializacija: #{@doctor.category}"
    text "Telefon: #{@doctor.phone}"
    text "Max stevilo pacientov: #{@doctor.limitPatient}"
    @hospital = Hospital.find(@doctor.hospital_id)
    puts @hospital.hospitalName
    text "Izvajalec zdravstvenih storitev:"
    indent(20) do
      text "Naziv: #{@hospital.hospitalName}"
      text "Sifra: #{@hospital.hospitalNumber}"
    end
    @address = Address.find(@hospital.address_id)
    @post = Post.find(@address.post_id)
    indent(20) do
      text "Naslov: #{@address.streetName} #{@address.streetNumber}, #{@post.postName} #{@post.postNumber}"
    end
    if @doctor.deleted
      text "Izbrisan: DA"
    else
      text "Izbrisan: NE"
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