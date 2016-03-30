class CreateDoctorHasPatients < ActiveRecord::Migration
  def change
    create_table :doctor_has_patients do |t|
      t.references :doctor, foreign_key: true
      t.references :patient, foreign_key: true

      t.timestamps null: false
    end
  end
end
