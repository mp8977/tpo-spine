class CreateIllnesses < ActiveRecord::Migration
  def change
    create_table :illnesses do |t|
      t.string :illnessNumber
      t.string :name
      t.boolean :isAllergy

      t.timestamps null: false
    end
  end
end
