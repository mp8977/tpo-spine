class DietInstruction < ActiveRecord::Base
  #validates :url,presence: true

  belongs_to :diet
end
