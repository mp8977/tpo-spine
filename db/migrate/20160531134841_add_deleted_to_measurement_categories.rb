class AddDeletedToMeasurementCategories < ActiveRecord::Migration
  def change
    add_column :measurement_categories, :deleted, :boolean, default: false, null: false
  end
end
