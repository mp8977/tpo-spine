class UpdateUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.remove :email, :password
    end
  end
end