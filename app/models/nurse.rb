class Nurse < ActiveRecord::Base

  validates :nurseNumber, uniqueness: true

  #validates :password, presence: true,
  #          :format => {:with => /\A(?=.*[a-zA-Z])(?=.*[0-9]).{6,40}\z/, message: "Geslo mora biti dolgo vsaj 6 znakov in vsebovati vsaj eno črko in številko."}
  #validates :email, presence: true,uniqueness: true,
  #          :format => {:with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: "E-mail nima veljavne oblike."}
  devise :database_authenticatable, :recoverable, :registerable, :trackable, :validatable, :lockable


  validates :firstName, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }, allow_blank: true
  validates :lastName, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }, allow_blank: true
  validates_format_of :phone,with:/\A[0-9]{7,9}\z/, allow_blank: true
  validates_format_of :nurseNumber,with:/\A[0-9a-zA-Z]{4}\z/, allow_blank: true

  validate :password_complexity

  def password_complexity
    if password.present? and not password.match(/^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/)
      errors.add :password, "mora vsebovati vsaj eno črko in eno števko."
    end
  end

  #validates_format_of :phone,with:/\A[\/\-0-9]{11,12}\z/

  has_and_belongs_to_many :doctors
  belongs_to :hospital

  def last_sign_in_at_format
    sign_in_string = last_sign_in_at.to_formatted_s(:rfc822)
    # ura utc+2 ljubljana
    sign_in_string[17..18] = ((sign_in_string[17..18].to_i + 2) % 24).to_s
    # dan
    dan = last_sign_in_at.to_formatted_s(:rfc822)[0..2]
    if dan == 'Mon'
      rez = "Ponedeljek"
    elsif dan == 'Tue'
      rez = "Torek"
    elsif dan == 'Wed'
      rez = "Sreda"
    elsif dan == 'Thu'
      rez = "Cetrtek"
    elsif dan == 'Fri'
      rez = "Petek"
    elsif dan == 'Sat'
      rez = "Sobota"
    else
      rez = "Nedelja"
    end
    stevilka_dneva = last_sign_in_at.to_formatted_s(:rfc822)[5..6]
    if stevilka_dneva[0] == '0'
      stevilka_dneva = stevilka_dneva[1]
    end
    # mesec
    mesec = last_sign_in_at.to_formatted_s(:rfc822)[8..10]
    if mesec == 'Jan'
      rez = rez + ' ' + stevilka_dneva + '. januar' + sign_in_string[11..24]
    elsif mesec == 'Feb'
      rez = rez + ' ' + stevilka_dneva + '. februar' + sign_in_string[11..24]
    elsif mesec == 'Mar'
      rez = rez + ' ' + stevilka_dneva + '. marec' + sign_in_string[11..24]
    elsif mesec == 'Apr'
      rez = rez + ' ' + stevilka_dneva + '. april' + sign_in_string[11..24]
    elsif mesec == 'May'
      rez = rez + ' ' + stevilka_dneva + '. maj' + sign_in_string[11..24]
    elsif mesec == 'Jun'
      rez = rez + ' ' + stevilka_dneva + '. junij' + sign_in_string[11..24]
    elsif mesec == 'Jul'
      rez = rez + ' ' + stevilka_dneva + '. julij' + sign_in_string[11..24]
    elsif mesec == 'Aug'
      rez = rez + ' ' + stevilka_dneva + '. avgust' + sign_in_string[11..24]
    elsif mesec == 'Sep'
      rez = rez + ' ' + stevilka_dneva + '. september' + sign_in_string[11..24]
    elsif mesec == 'Oct'
      rez = rez + ' ' + stevilka_dneva + '. oktober' + sign_in_string[11..24]
    elsif mesec == 'Nov'
      rez = rez + ' ' + stevilka_dneva + '. november' + sign_in_string[11..24]
    else
      rez = rez + ' ' + stevilka_dneva + '. december' + sign_in_string[11..24]
    end
    return rez
  end
end
