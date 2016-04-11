class AddDeletedToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :deleted, :boolean, default: false, null: false
  end
end
