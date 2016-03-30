class CreateDiets < ActiveRecord::Migration
  def change
    create_table :diets do |t|
      t.string :dietNumber
      t.string :name

      t.timestamps null: false
    end
  end
end
