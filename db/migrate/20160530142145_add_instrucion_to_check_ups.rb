class AddInstrucionToCheckUps < ActiveRecord::Migration
  def change
    add_column :check_ups, :instruction, :text
  end
end
