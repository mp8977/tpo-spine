class CreateMedicineChecks < ActiveRecord::Migration
  def change
    create_table :medicine_checks do |t|
      t.references :medicine, foreign_key: true
      t.references :check_up, foreign_key: true

      t.timestamps null: false
    end
  end
end
