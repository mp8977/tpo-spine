class AddDeletedToMeasurements < ActiveRecord::Migration
  def change
    add_column :measurements, :deleted, :boolean, default: false, null: false
  end
end
