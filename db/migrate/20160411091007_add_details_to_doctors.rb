class AddDetailsToDoctors < ActiveRecord::Migration
  def change
    add_column :doctors, :deleted, :boolean, default: false, null: false
  end
end
