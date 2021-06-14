class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  extend Devise::Models
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :students_teams
  has_many :teams, through: :students_teams
  has_many :courses, through: :teams
  has_many :questionnaires

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?  
end
