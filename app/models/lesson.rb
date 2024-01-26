# frozen_string_literal: true

class Lesson < ApplicationRecord
  belongs_to :timetable
  has_many :teachers
  validates :subject, presence: true
  validates :day_on_wek, presence: true
end