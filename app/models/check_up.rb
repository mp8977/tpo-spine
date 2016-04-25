class CheckUp < ActiveRecord::Base
  #validates :date, presence: true

  belongs_to :doctor
  belongs_to :patient
  has_many :measurement_docs
  has_and_belongs_to_many :diets
  has_and_belongs_to_many :medicine
  has_and_belongs_to_many :illnesses
  has_one :appointment

  def full_name
    "#{date} #{Patient.find(patient_id).full_name}"
  end

end
