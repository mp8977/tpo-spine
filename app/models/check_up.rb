class CheckUp < ActiveRecord::Base
  #validates :date, presence: true

  belongs_to :doctor
  belongs_to :patient
  has_many :measurement_docs, :dependent => :destroy
  has_and_belongs_to_many :diets, join_table: :diet_checks
  has_and_belongs_to_many :medicines, join_table: :medicine_checks
  has_and_belongs_to_many :illnesses, join_table: :illness_checks

  #has_many :prescriptions
  #has_many :illnesses, through: :prescritions

  accepts_nested_attributes_for :measurement_docs, :allow_destroy => true, reject_if: proc { |a| a['part_measurement_id'].blank? }

  def measurement_docs_for_form
    collection = measurement_docs.where(check_up_id: id)
    collection.any? ? collection : measurement_docs.build
  end

  has_one :appointment

  #has_many :measurements, :dependent => :destroy

  #accepts_nested_attributes_for :measurements, :allow_destroy => true, :reject_if => :date_not_selected





  def date_not_selected(attributes)
    puts attributes
    #puts attributes["date(1i)"].to_i
    #puts attributes["date(2i)"].to_i
    #puts attributes["date(3i)"].to_i

    if attributes["date(1i)"].to_i != 0 && attributes["date(2i)"].to_i !=0 &&attributes["date(3i)"].to_i !=0 && attributes["date(4i)"].to_i !=0 && attributes["date(5i)"].to_i !=0
      return false
    else
      return true
    end
  end

end
