class CreateContactPeople < ActiveRecord::Migration
  def change
    create_table :contact_people do |t|
      t.string :lastName
      t.string :firstName
      t.string :phone
      t.string :relationship
      t.references :patient, foreign_key: true
      t.references :address, foreign_key: true

      t.timestamps null: false
    end
  end
end
