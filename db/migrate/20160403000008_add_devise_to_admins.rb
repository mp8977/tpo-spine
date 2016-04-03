class AddDeviseToAdmins < ActiveRecord::Migration
  def change
    change_table :admins do |t|
      t.database_authenticatable
      t.registerable
      t.trackable
      t.validatable
      t.lockable
    end
  end
end