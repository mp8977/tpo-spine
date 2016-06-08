class ChangeDateFormatInCheckUp < ActiveRecord::Migration
    def up
      change_column :check_ups, :date, :datetime
    end

    def down
      change_column :check_ups, :date, :date
    end

end
