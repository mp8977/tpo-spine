class CreateHospitals < ActiveRecord::Migration
  def change
    create_table :hospitals do |t|
      t.string :hospitalNumber
      t.string :hospitalName
      t.references :address, foreign_key: true

      t.timestamps null: false
    end
  end
end
