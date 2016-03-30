class CreateNurses < ActiveRecord::Migration
  def change
    create_table :nurses do |t|
      t.string :nurseNumber
      t.string :email
      t.string :password
      t.string :lastName
      t.string :firstName
      t.string :phone
      t.references :hospital, foreign_key: true

      t.timestamps null: false
    end
  end
end
