class Hospital < ActiveRecord::Base
  #validates :hospitalName,presence: true,uniqueness: true
  validates :hospitalNumber, uniqueness: true, allow_nil: true

  belongs_to :address
  has_many :doctors
  has_many :nurses

  def full_name
    "#{hospitalName} #{hospitalNumber}"
  end
end
