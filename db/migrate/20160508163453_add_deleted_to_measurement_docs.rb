class AddDeletedToMeasurementDocs < ActiveRecord::Migration
  def change
    add_column :measurement_docs, :deleted, :boolean, default: false, null: false
  end
end
