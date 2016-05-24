class NursePdf < Prawn::Document
  def initialize(resource, view)
    super()
    font "#{Prawn::DATADIR}/fonts/DejaVuSans.ttf"
    header
    text 'Podatki o medicinski sestri', align: :center, size: 28
    move_down 30
    @nurse = resource
    @view = view
    font_size 20
    default_leading 5 #prostor med vrsticami
    text "Sifra: #{@nurse.nurseNumber}"
    text "Ime in priimek: #{@nurse.firstName} #{@nurse.lastName}"
    text "Email: #{@nurse.email}"
    text "Telefon: #{@nurse.phone}"
    @hospital = Hospital.find(@nurse.hospital_id)
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
    if @nurse.deleted
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