class MeasurementDoc < ActiveRecord::Base
	belongs_to :part_measurement
	belongs_to :check_up

	accepts_nested_attributes_for :part_measurement


end
