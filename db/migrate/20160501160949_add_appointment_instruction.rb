class AddAppointmentInstruction < ActiveRecord::Migration
  def change
    add_column :appointments,:instruction,:text
  end
end
