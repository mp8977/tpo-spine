class AddDeletedToNurses < ActiveRecord::Migration
  def change
    add_column :nurses, :deleted, :boolean, default: false, null: false
  end
end
