class CreateCheckUps < ActiveRecord::Migration
  def change
    create_table :check_ups do |t|
      t.date :date
      t.references :doctor, foreign_key: true
      t.references :patient, foreign_key: true

      t.timestamps null: false
    end
  end
end
