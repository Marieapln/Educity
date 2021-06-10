class Team < ApplicationRecord
  belongs_to :course
  has_many :students_teams
  has_many :users, through: :students_teams
end
