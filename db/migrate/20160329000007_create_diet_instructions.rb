class CreateDietInstructions < ActiveRecord::Migration
  def change
    create_table :diet_instructions do |t|
      t.string :url
      t.references :diet, foreign_key: true

      t.timestamps null: false
    end
  end
end
