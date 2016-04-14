class Address < ActiveRecord::Base

  validates_numericality_of :streetNumber, less_than_or_equal_to: 1000, greater_than: 0, allow_blank: true

  belongs_to :post
  has_one :hospital
  has_one :patient
  has_one :contact_person
end
