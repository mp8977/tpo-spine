class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :doctorNumber
      t.string :type
      t.string :email
      t.string :password
      t.string :lastName
      t.string :firstName
      t.string :phone
      t.integer :limitPatient
      t.references :hospital, foreign_key: true

      t.timestamps null: false
    end
  end
end
