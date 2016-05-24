class AddUrlStringToMedicineInstructions < ActiveRecord::Migration
  def change
    add_column :medicine_instructions, :url_string, :string
  end
end
