class Nurse < ActiveRecord::Base
  # validates :nurseNumber,presence: true,uniqueness: true
  #validates :password, presence: true,
  #          :format => {:with => /\A(?=.*[a-zA-Z])(?=.*[0-9]).{6,40}\z/, message: "Geslo mora biti dolgo vsaj 6 znakov in vsebovati vsaj eno črko in številko."}
  #validates :email, presence: true,uniqueness: true,
  #          :format => {:with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: "E-mail nima veljavne oblike."}
  devise :database_authenticatable, :recoverable, :registerable, :trackable, :validatable, :lockable

  validates :firstName, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }, allow_blank: true
  validates :lastName, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }, allow_blank: true

  has_and_belongs_to_many :doctors
  belongs_to :hospital
end
