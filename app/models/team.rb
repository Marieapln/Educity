class Team < ApplicationRecord
  belongs_to :course
  has_many :students_teams
  has_many :users, through: :students_teams

  geocoded_by :city
  after_validation :geocode, if: :will_save_change_to_city?
end
