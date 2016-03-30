class Measurement < ActiveRecord::Base
  validates :date,presence: true

  has_many :part_measurements
end
