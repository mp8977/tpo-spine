class PartMeasurement < ActiveRecord::Base
  #validates :name,presence: true,uniqueness: true
  #validates :unit,presence: true
  #validates :value,presence: true,precision: 2

  belongs_to :measurement
  has_one :measurement_home
  has_one :measurement_doc
end
