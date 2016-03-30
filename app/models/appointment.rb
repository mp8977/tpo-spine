class Appointment < ActiveRecord::Base
  validates :date, presence: true

  belongs_to :patient
  belongs_to :doctor
  belongs_to :check_up
end
