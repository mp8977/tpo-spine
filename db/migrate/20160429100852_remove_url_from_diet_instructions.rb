class RemoveUrlFromDietInstructions < ActiveRecord::Migration
  def change
    remove_column :diet_instructions, :url, :string
  end
end
