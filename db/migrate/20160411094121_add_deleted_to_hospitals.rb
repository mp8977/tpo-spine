class AddDeletedToHospitals < ActiveRecord::Migration
  def change
    add_column :hospitals, :deleted, :boolean, default: false, null: false
  end
end
