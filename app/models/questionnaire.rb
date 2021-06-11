class Questionnaire < ApplicationRecord
  belongs_to :user
  belongs_to :course
  WHEN = ["Mornings","Lunch Breaks","Afternoons","Evenings","Nights"]
  DAYS = ["M","T","W","T","F","S","S"]
end
