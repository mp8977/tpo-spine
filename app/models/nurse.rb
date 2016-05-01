class Nurse < ActiveRecord::Base


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
    sign_in_string[17..18] = ((sign_in_string[17..18].to_i + 2) % 24).to_s
    if last_sign_in_at.to_formatted_s(:rfc822)[0..2] == 'Mon'
      return "Ponedeljek" + sign_in_string[3..24]
    elsif last_sign_in_at.to_formatted_s(:rfc822)[0..2] == 'Tue'
      return "Torek" + sign_in_string[3..24]
    elsif last_sign_in_at.to_formatted_s(:rfc822)[0..2] == 'Wed'
      return "Sreda" + sign_in_string[3..24]
    elsif last_sign_in_at.to_formatted_s(:rfc822)[0..2] == 'Thu'
      return "Cetrtek" + sign_in_string[3..24]
    elsif last_sign_in_at.to_formatted_s(:rfc822)[0..2] == 'Fri'
      return "Petek" + sign_in_string[3..24]
    elsif last_sign_in_at.to_formatted_s(:rfc822)[0..2] == 'Sat'
      return "Sobota" + sign_in_string[3..24]
    else
      return "Nedelja" + sign_in_string[3..24]
    end
  end
end
