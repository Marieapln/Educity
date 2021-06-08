class AddMeetingColumnsToTeams < ActiveRecord::Migration[6.0]
  def change
    add_column :teams, :day_of_the_week, :string
    add_column :teams, :time_of_the_day, :integer
    add_column :teams, :duration, :integer
  end
end
