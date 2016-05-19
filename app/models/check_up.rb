class CheckUp < ActiveRecord::Base
  #validates :date, presence: true

  belongs_to :doctor
  belongs_to :patient
  has_many :measurement_docs, :dependent => :destroy
  has_and_belongs_to_many :diets
  has_and_belongs_to_many :medicine
  has_and_belongs_to_many :illnesses
  has_one :appointment

  has_many :measurements, :dependent => :destroy

  accepts_nested_attributes_for :measurements, :allow_destroy => true, :reject_if => :date_not_selected

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
