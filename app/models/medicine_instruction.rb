class MedicineInstruction < ActiveRecord::Base
  validates :url,presence: true

  has_many :medicines
end
