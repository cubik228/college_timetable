# frozen_string_literal: true

class Group < ApplicationRecord
  belongs_to :user
  has_one :timetable
  validates :name, presence: true
end
