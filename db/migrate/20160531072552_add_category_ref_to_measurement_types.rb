class AddCategoryRefToMeasurementTypes < ActiveRecord::Migration
  def change
    add_column :measurement_types, :unit, :string
    add_reference :measurement_types, :measurement_category, index: true, foreign_key: true
  end
end
