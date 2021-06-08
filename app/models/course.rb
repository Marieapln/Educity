class Course < ApplicationRecord
  has_many :teams
  has_many :students_teams, through: :teams
  has_many :users, through: :students_teams
end
