class CheckUp < ActiveRecord::Base
  #validates :date, presence: true

  belongs_to :doctor
  belongs_to :patient
  has_many :measurement_docs
  accepts_nested_attributes_for :measurement_docs
  has_and_belongs_to_many :diets, join_table: :diet_checks
  has_and_belongs_to_many :medicines, join_table: :medicine_checks
  has_and_belongs_to_many :illnesses, join_table: :illness_checks
  has_one :appointment

  def full_name
    "#{date} #{Patient.find(patient_id).full_name}"
  end

end
