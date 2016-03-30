class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :streetName
      t.string :streetNumber
      t.references :post, foreign_key: true

      t.timestamps null: false
    end
  end
end
