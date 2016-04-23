class User < ActiveRecord::Base
  #validates :password, presence: true,
  #          :format => {:with => /\A(?=.*[a-zA-Z])(?=.*[0-9]).{6,40}\z/, message: "Geslo mora biti dolgo vsaj 6 znakov in vsebovati vsaj eno črko in številko."}
  #validates :email, presence: true,uniqueness: true,
  #         :format => {:with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: "E-mail nima veljavne oblike."}
  devise :database_authenticatable, :confirmable, :recoverable, :registerable, :trackable, :validatable, :lockable

  validate :password_complexity

  def password_complexity
    if password.present? and not password.match(/^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/)
      errors.add :password, "must include at least one letter and one digit"
    end
  end

  def active_for_authentication?
    super && !(self.deleted)
  end

  def count_patients
    Patient.where(user_id: id, :deleted => false).count
  end

  def find_only_one_patient
    Patient.where(user_id: id, :deleted => false).first
  end

  def inactive_message
    "Uporabniski racun je bil izbrisan"
  end

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

  has_many :patients
  accepts_nested_attributes_for :patients
end
