class Nurse < ActiveRecord::Base
  #validates :nurseNumber,presence: true,uniqueness: true
  validates :password, presence: true,
            :format => {:with => /\A(?=.*[a-zA-Z])(?=.*[0-9]).{6,40}\z/, message: "Geslo mora biti dolgo vsaj 6 znakov in vsebovati vsaj eno črko in številko."}
  validates :email, presence: true,uniqueness: true,
            :format => {:with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: "E-mail nima veljavne oblike."}

  validates_format_of :firstName, with: /\A[a-zA-Z]+(?: [a-zA-Z]+)?\z/, allow_blank: true
  validates_format_of :lastName, with: /\A[a-zA-Z]+(?: [a-zA-Z]+)?\z/, allow_blank: true
  validates_format_of :phone, with: /\A[0-9]{7,9}\z/, allow_blank: true


  has_and_belongs_to_many :doctors
  belongs_to :hospital
end
