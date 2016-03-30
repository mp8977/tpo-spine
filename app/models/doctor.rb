class Doctor < ActiveRecord::Base
  validates :doctorNumber,presence: true,uniqueness: true
  validates :type,presence: true
  validates :password, presence: true,
            :format => {:with => /\A(?=.*[a-zA-Z])(?=.*[0-9]).{6,40}\z/, message: "Geslo mora biti dolgo vsaj 6 znakov in vsebovati vsaj eno črko in številko."}
  validates :email, presence: true,uniqueness: true,
            :format => {:with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: "E-mail nima veljavne oblike."}
  validates :firstName, presence: true
  validates :lastName, presence: true
  validates :phone, presence: true
  validates :limitPatient,presence: true,numericality:{ :greater_than_or_equal_to => 0 }

  validates_format_of :firstName,with:/\A[a-zA-Z]+(?: [a-zA-Z]+)?\z/
  validates_format_of :lastName,with:/\A[a-zA-Z]+(?: [a-zA-Z]+)?\z/
  validates_format_of :phone,with:/\A[0-9]{7,9}\z/

  has_many :check_ups
  has_many :patients, through: :check_ups
  has_and_belongs_to_many :patients
  has_and_belongs_to_many :nurses
  belongs_to :hospital
end
