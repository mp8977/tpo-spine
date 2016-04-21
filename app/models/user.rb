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

  def inactive_message
    "Uporabniski racun je bil izbrisan"
  end

  has_many :patients
  accepts_nested_attributes_for :patients
end
