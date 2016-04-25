class MeasurementHome < ActiveRecord::Base
	belongs_to :part_measurement
	belongs_to :patient
end
