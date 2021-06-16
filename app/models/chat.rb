class Chat < ApplicationRecord

  belongs_to :user
  belongs_to :team
  validates_presence_of :message, :team_id, :user_id

end
