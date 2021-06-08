class Team < ApplicationRecord
  belongs_to :course
  has_and_belongs_to_many :students_teams
  has_and_belongs_to_many :users, through: :students_teams
end
