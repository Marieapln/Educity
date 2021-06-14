class Team < ApplicationRecord
  belongs_to :course
# belongs_to :students_teams
  has_many :students_teams
  has_many :users, through: :students_teams

  DAY_OF_THE_WEEK = [["Monday","Mon"], ["Tuesday","Tue"],["Wednesday","Wed"],["Thursday","Thu"], ["Friday","Fri"], ["Saturday","Sat"], ["Sunday","Sun"]]

end
