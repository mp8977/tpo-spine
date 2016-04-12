class Address < ActiveRecord::Base
  belongs_to :post
  has_one :hospital
  has_many :patients
  has_many :contact_people
end
