class Doctor < ActiveRecord::Base

  #validates :password, presence: true,
  #          :format => {:with => /\A(?=.*[a-zA-Z])(?=.*[0-9]).{6,40}\z/, message: "Geslo mora biti dolgo vsaj 6 znakov in vsebovati vsaj eno črko in številko."}
  #validates :email, presence: true,uniqueness: true,
  #          :format => {:with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: "E-mail nima veljavne oblike."}
  devise :database_authenticatable, :recoverable, :registerable, :trackable, :validatable, :lockable

  validates :limitPatient, numericality:{ :greater_than_or_equal_to => 0 }

  has_many :check_ups
  has_many :patients, through: :check_ups
  has_and_belongs_to_many :patients
  has_and_belongs_to_many :nurses
  belongs_to :hospital
  has_many :appointments
end
