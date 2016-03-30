class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :date

      t.references :check_up, foreign_key: true
      t.references :doctor, foreign_key: true
      t.references :patient, foreign_key: true

      t.timestamps null: false
    end
  end
end
