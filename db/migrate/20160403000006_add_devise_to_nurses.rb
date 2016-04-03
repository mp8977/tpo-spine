class AddDeviseToNurses < ActiveRecord::Migration
  def change
    change_table :nurses do |t|
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