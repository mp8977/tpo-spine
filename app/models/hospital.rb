class Hospital < ActiveRecord::Base
  validates :hospitalName,presence: true,uniqueness: true
  validates :hospitalNumber,presence: true,uniqueness: true

  belongs_to :address
  has_many :doctors
  has_many :nurses

  def full_name
    "#{hospitalNumber} #{hospitalName}"
  end
end
