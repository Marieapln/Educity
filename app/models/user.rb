class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :students_teams
  has_many :teams, through: :students_teams
  has_many :courses, through: :teams
  has_many :questionnaires
end
