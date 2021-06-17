class AddColumnsToMeetings < ActiveRecord::Migration[6.0]
  def change
    add_reference :meetings, :team, index: true
  end
end
