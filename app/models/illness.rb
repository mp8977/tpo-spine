class Illness < ActiveRecord::Base

  #validates :illnessNumber, presence: true,uniqueness: true
  #validates :name, presence: true
  #validates :isAllergy, presence:true


  has_and_belongs_to_many :medicines
  has_and_belongs_to_many :check_ups

  def full_name
     if isAllergy
        "Alergija: "+"#{name}"
     else
       "#{name}"
     end
  end
end

