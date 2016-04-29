class RemoveUrlFromMedicineInstructions < ActiveRecord::Migration
  def change
    remove_column :medicine_instructions, :url, :string
  end
end
