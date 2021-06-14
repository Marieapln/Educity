class Questionnaire < ApplicationRecord
  belongs_to :user
  belongs_to :course
  WHEN = ["Mornings","Lunch Breaks","Afternoons","Evenings","Nights"]
  DAYS = {
    'Mon' => 'Monday',
    'Tue' => 'Tuesday',
    'Wed' => 'Wednesday',
    'Thu' => 'Thursday',
    'Fri' => 'Friday',
    'Sat' => 'Saturday',
    'Sun' => 'Sunday'
  }
end
