class Measurement < ActiveRecord::Base
  #validates :date,presence: true

  has_many :part_measurements
  accepts_nested_attributes_for :part_measurements
end
