class AddDeletedToMeasurementHomes < ActiveRecord::Migration
  def change
    add_column :measurement_homes, :deleted, :boolean, default: false, null: false
  end
end
