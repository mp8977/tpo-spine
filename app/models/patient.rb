class Patient < ActiveRecord::Base
  #validates :cardNumber,presence: true,uniqueness: true
  #validates :firstName, presence: true
  #validates :lastName, presence: true
  #validates :phone, presence: true
  #validates :birthDate, presence:true
  #validates :sex, presence: true,length: {is: 1}

  #validates_format_of :firstName,with:/\A[a-zA-Z]+(?: [a-zA-Z]+)?\z/
  #validates_format_of :lastName,with:/\A[a-zA-Z]+(?: [a-zA-Z]+)?\z/
  #validates_format_of :phone,with:/\A[0-9]{7,9}\z/

  has_many :check_ups
  has_many :doctors, through: :check_ups
  has_and_belongs_to_many :doctors
  belongs_to :user
  has_one :contact_person
  belongs_to :address
  has_many :measurement_homes
  has_many :appointments

  accepts_nested_attributes_for :contact_person
  accepts_nested_attributes_for :address

  def full_name
    "#{firstName} #{lastName}"
  end
end
