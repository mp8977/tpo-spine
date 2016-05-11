class AddDeletedToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :deleted, :boolean, default: false, null: false
  end
end
