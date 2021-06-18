class AddTeamToNotifications < ActiveRecord::Migration[6.0]
  def change
        add_reference :notifications, :team, index: true
  end
end
