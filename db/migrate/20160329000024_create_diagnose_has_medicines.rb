class CreateDiagnoseHasMedicines < ActiveRecord::Migration
  def change
    create_table :diagnose_has_medicines do |t|
      t.references :medicine, foreign_key: true
      t.references :illness, foreign_key: true

      t.timestamps null: false
    end
  end
end
