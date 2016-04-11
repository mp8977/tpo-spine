class AddDeletedToIllnesses < ActiveRecord::Migration
  def change
    add_column :illnesses, :deleted, :boolean, default: false, null: false
  end
end
