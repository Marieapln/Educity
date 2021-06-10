class Course < ApplicationRecord
  has_many :teams
  has_many :students_teams, through: :teams
  has_many :users, through: :students_teams

  validates :url, presence: true, uniqueness: true, length: { minimum: 15 }
  validates :category, presence: true
  validates :platform, presence: true
  validates :title, presence: true
  validates :course_length, presence: true
  validates :subcategories, presence: true
end
