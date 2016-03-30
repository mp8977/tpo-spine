class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :cardNumber
      t.string :lastName
      t.string :firstName
      t.string :phone
      t.date :birthDate
      t.string :sex
      t.references :user, foreign_key: true
      t.references :address, foreign_key: true

      t.timestamps null: false
    end
  end
end
