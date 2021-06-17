class Meeting < ApplicationRecord
  belongs_to :user
  belongs_to :team

  validates :start_time, presence: true
  validates :end_time, presence: true
  default_scope -> { order(:start_time) }

    def time
    "#{start_time.strftime('%I:%M %p')} - #{end_time.strftime('%I:%M %p')}"
  end
end
