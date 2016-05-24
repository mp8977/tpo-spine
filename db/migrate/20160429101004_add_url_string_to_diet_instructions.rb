class AddUrlStringToDietInstructions < ActiveRecord::Migration
  def change
    add_column :diet_instructions, :url_string, :string
  end
end
