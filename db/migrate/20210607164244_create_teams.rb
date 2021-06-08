class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.date :meeting_time
      t.date :start_date

      t.timestamps
    end
  end
end
