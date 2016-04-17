class ChangeDateFormatInMyTable < ActiveRecord::Migration
  def up
    change_column :measurements, :date, :datetime
  end

  def down
    change_column :measurements, :date, :date
  end
end
