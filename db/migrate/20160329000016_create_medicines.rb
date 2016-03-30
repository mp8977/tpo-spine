class CreateMedicines < ActiveRecord::Migration
  def change
    create_table :medicines do |t|
      t.string :medicineNumber
      t.string :name
      t.boolean :inUse
      t.references :medicine_instruction, foreign_key: true

      t.timestamps null: false
    end
  end
end
