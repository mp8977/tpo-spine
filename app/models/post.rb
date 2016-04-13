class Post < ActiveRecord::Base
  #validates :postName, presence: true, uniqueness: true
  #validates :postNumber,presence: true, uniqueness: true

  #validates_format_of :postNumber,with: /\A[0-9]{4}\z/

  has_many :addresses

  def full_name
    "#{postNumber} #{postName}"
  end

end
