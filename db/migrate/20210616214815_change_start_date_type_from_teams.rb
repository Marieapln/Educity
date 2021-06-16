class ChangeStartDateTypeFromTeams < ActiveRecord::Migration[6.0]
  def change
        remove_column :teams, :start_date
        add_column :teams, :start_date, :datetime


  end
end
