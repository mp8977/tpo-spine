class Nurse < ActiveRecord::Base
  validates :nurseNumber,presence: true,uniqueness: true
  #validates :password, presence: true,
  #          :format => {:with => /\A(?=.*[a-zA-Z])(?=.*[0-9]).{6,40}\z/, message: "Geslo mora biti dolgo vsaj 6 znakov in vsebovati vsaj eno črko in številko."}
  #validates :email, presence: true,uniqueness: true,
  #          :format => {:with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: "E-mail nima veljavne oblike."}

  validates :firstName, presence: true,with:/\A[a-zA-Z]+(?: [a-zA-Z]+)?\z/
  validates :lastName, presence: true,with:/\A[a-zA-Z]+(?: [a-zA-Z]+)?\z/
  validates :phone, presence: true,with:/\A[0-9]{7,9}\z/


  has_and_belongs_to_many :doctors
  belongs_to :hospital
end
