class CreateMedicineInstructions < ActiveRecord::Migration
  def change
    create_table :medicine_instructions do |t|
      t.string :url

      t.timestamps null: false
    end
  end
end
