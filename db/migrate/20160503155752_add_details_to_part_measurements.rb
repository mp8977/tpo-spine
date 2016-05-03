class AddDetailsToPartMeasurements < ActiveRecord::Migration
  def change
    add_column :part_measurements, :value, :decimal, precision: 5, scale: 2
    add_column :part_measurements, :deleted, :boolean, default: false, null: false
  end
end
