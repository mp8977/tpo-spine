class CreateDietChecks < ActiveRecord::Migration
  def change
    create_table :diet_checks do |t|
      t.references :diet, foreign_key: true
      t.references :check_up, foreign_key: true

      t.timestamps null: false
    end
  end
end
