class CreatePartMeasurements < ActiveRecord::Migration
  def change
    create_table :part_measurements do |t|
      t.string :name
      t.string :unit
      t.decimal :value
      t.references :measurement, foreign_key: true

      t.timestamps null: false
    end
  end
end
