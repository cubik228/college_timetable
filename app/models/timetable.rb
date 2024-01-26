class Timetable < ApplicationRecord
  belongs_to :group
  has_many :lessons
end
