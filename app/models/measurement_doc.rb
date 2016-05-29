class MeasurementDoc < ActiveRecord::Base
	belongs_to :part_measurement
	belongs_to :check_up


	accepts_nested_attributes_for :part_measurement, :allow_destroy => true, reject_if: proc { |a| a['value'].blank? }
	
end
