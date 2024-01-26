# frozen_string_literal: true

class Group < ApplicationRecord
  belongs_to :user
  has_one :timetable
end
