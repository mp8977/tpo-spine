class AddDeletedToUsers < ActiveRecord::Migration
  def change
    add_column :users, :deleted, :boolean, default: false, null: false
  end
end
