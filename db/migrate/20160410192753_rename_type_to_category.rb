class RenameTypeToCategory < ActiveRecord::Migration
  def change
    rename_column :doctors, :type,:category
  end
end
