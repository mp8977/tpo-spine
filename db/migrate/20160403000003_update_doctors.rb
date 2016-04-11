class UpdateDoctors < ActiveRecord::Migration
  def change
    change_table :doctors do |t|
      t.remove :email, :password
    end
  end
end