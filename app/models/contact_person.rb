class ContactPerson < ActiveRecord::Base
  #validates :firstName, presence: true
  #validates :lastName, presence: true
  #validates :phone, presence: true
  #validates :relationship,presence: true

  validates_format_of :firstName, with: /\A[a-zA-Z]+(?: [a-zA-Z]+)?\z/, allow_blank: true
  validates_format_of :lastName, with: /\A[a-zA-Z]+(?: [a-zA-Z]+)?\z/, allow_blank: true
  validates_format_of :phone, with: /\A[0-9]{7,9}\z/, allow_blank: true
  validates_format_of :relationship, with: /\A[a-zA-Z]+(?: [a-zA-Z]+)?\z/, allow_blank: true

  belongs_to :patient
  belongs_to :address

end
