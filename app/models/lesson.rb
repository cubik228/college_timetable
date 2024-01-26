# frozen_string_literal: true

class Lesson < ApplicationRecord
  belongs_to :timetable
  has_many :teachers
end