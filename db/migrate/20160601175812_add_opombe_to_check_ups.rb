class AddOpombeToCheckUps < ActiveRecord::Migration
  def change
    add_column :check_ups, :opombe, :text
  end
end
