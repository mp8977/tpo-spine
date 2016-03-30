class CreateIllnessChecks < ActiveRecord::Migration
  def change
    create_table :illness_checks do |t|
      t.references :illness, foreign_key: true
      t.references :check_up, foreign_key: true

      t.timestamps null: false
    end
  end
end
