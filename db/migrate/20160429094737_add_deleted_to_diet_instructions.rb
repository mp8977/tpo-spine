class AddDeletedToDietInstructions < ActiveRecord::Migration
  def change
    add_column :diet_instructions, :deleted, :boolean, default: false, null: false
  end
end
