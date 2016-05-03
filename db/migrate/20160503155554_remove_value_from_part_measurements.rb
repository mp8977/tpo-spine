class RemoveValueFromPartMeasurements < ActiveRecord::Migration
  def change
    remove_column :part_measurements, :value, :decimal
  end
end
