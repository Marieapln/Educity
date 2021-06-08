class CreateStudentsTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :students_teams do |t|

      t.timestamps
    end
  end
end
