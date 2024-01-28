# frozen_string_literal: true

class Teacher < ApplicationRecord
  belongs_to :lesson
  validates :name, presence: true
  validates :room, presence: true
end
