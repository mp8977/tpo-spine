class MeasurementDoc < ActiveRecord::Base
	belongs_to :part_measurement
	belongs_to :check_up
	
end
