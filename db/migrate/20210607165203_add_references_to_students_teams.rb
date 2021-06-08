class AddReferencesToStudentsTeams < ActiveRecord::Migration[6.0]
  def change
    add_reference :students_teams, :user, foreign_key: true
    add_reference :students_teams, :team, foreign_key: true
  end
end
