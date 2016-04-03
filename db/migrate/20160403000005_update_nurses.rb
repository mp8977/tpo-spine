class UpdateNurses < ActiveRecord::Migration
  def change
    change_table :nurses do |t|
      t.remove :email, :password
    end
  end
end