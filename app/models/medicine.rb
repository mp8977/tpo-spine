class Medicine < ActiveRecord::Base
  #validates :medicineNumber,presence: true,uniqueness: true
  #validates :name,presence: true
  #validates :inUse,presence: true

  belongs_to :medicine_instruction
  has_and_belongs_to_many :check_ups
  has_and_belongs_to_many :illnesses

end
