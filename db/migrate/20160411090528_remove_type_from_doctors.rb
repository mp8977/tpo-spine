class RemoveTypeFromDoctors < ActiveRecord::Migration
  def change
    remove_column :doctors, :type, :string
  end
end
