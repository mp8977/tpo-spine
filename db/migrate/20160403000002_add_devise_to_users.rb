class AddDeviseToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.database_authenticatable
      t.confirmable
      t.recoverable
      t.registerable
      t.trackable
      t.validatable
      t.lockable
    end
  end
end