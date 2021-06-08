class RemoveMeetingTimeFromTeams < ActiveRecord::Migration[6.0]
  def change
    remove_column :teams, :meeting_time, :date
  end
end
