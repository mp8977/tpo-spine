class AddOtherToAppointment < ActiveRecord::Migration
  def change
    add_column :appointments,:isOther,:boolean
  end
end
