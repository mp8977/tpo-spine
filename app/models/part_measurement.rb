class PartMeasurement < ActiveRecord::Base
  #validates :name,presence: true,uniqueness: true
  #validates :unit,presence: true
  #validates :value, precision: 2

  belongs_to :measurement
  has_one :measurement_home
  has_one :measurement_doc
  accepts_nested_attributes_for :measurement_home
  accepts_nested_attributes_for :measurement_doc
end
