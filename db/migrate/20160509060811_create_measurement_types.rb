class CreateMeasurementTypes < ActiveRecord::Migration
  def change
    create_table :measurement_types do |t|
      t.string :name
      t.decimal :min_value, precision: 7, scale: 2
      t.decimal :max_value, precision: 7, scale: 2
      t.boolean :deleted, default: false, null: false

      t.timestamps null: false
    end
  end
end
