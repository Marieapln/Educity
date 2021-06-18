class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  extend Devise::Models
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :photo
  has_many :students_teams
  has_many :teams, through: :students_teams
  has_many :courses, through: :teams
  has_many :questionnaires
  has_many :chats
  has_many :notifications
end
