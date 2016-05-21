class CreateMeasurementCategories < ActiveRecord::Migration
  def change
    create_table :measurement_categories do |t|
      t.string :name
      t.integer :elements

      t.timestamps null: false
    end
  end
end
