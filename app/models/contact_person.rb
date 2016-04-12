class ContactPerson < ActiveRecord::Base
  #validates :firstName, presence: true
  #validates :lastName, presence: true
  #validates :phone, presence: true
  #validates :relationship,presence: true

  #validates_format_of :firstName,with:/\A[a-zA-Z]+(?: [a-zA-Z]+)?\z/
  #validates_format_of :lastName,with:/\A[a-zA-Z]+(?: [a-zA-Z]+)?\z/
  #validates_format_of :phone,with:/\A[0-9]{7,9}\z/
  #validates_format_of :relationship,with:/\A[a-zA-Z]+(?: [a-zA-Z]+)?\z/

  belongs_to :patient
  belongs_to :address

  accepts_nested_attributes_for :address

end
