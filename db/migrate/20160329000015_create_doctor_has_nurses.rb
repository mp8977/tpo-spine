class CreateDoctorHasNurses < ActiveRecord::Migration
  def change
    create_table :doctor_has_nurses do |t|
      t.references :doctor, foreign_key: true
      t.references :nurse, foreign_key: true

      t.timestamps null: false
    end
  end
end
