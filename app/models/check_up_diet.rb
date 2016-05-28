class CheckUpDiet < ActiveRecord::Base
  validates :check_up_id, uniqueness: {scope: :diet_id}
end
