class CreateMeasurementDocs < ActiveRecord::Migration
  def change
    create_table :measurement_docs do |t|
      t.references :check_up, foreign_key: true
      t.references :part_measurement, foreign_key: true

      t.timestamps null: false
    end
  end
end
