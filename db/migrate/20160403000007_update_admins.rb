class UpdateAdmins < ActiveRecord::Migration
  def change
    change_table :admins do |t|
      t.remove :email, :password
    end
  end
end