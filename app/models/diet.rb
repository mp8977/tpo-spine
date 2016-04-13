class Diet < ActiveRecord::Base
  #validates :dietNumber,presence: true,uniqueness: true
  #validates :name,presence: true

  has_many :diet_instructions
  has_and_belongs_to_many :check_ups
end
