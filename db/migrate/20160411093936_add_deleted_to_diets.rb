class AddDeletedToDiets < ActiveRecord::Migration
  def change
    add_column :diets, :deleted, :boolean, default: false, null: false
  end
end
