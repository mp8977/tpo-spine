class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :postName
      t.string :postNumber

      t.timestamps null: false
    end
  end
end
