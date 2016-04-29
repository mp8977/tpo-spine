class AddDeletedToMedicineInstructions < ActiveRecord::Migration
  def change
    add_column :medicine_instructions, :deleted, :boolean, default: false, null: false
  end
end
