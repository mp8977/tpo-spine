class Address < ActiveRecord::Base
  validates :streetName, presence: true
  validates :streetNumber, presence: true

  belongs_to :post
  has_one :hospital
  has_many :patients
  has_many :contact_people
end
