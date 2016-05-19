class Measurement < ActiveRecord::Base
  #validates :date,presence: true

  has_many :part_measurements
  belongs_to :check_up
  accepts_nested_attributes_for :part_measurements, :allow_destroy => true, reject_if: proc { |a| a['value'].blank? }
end
