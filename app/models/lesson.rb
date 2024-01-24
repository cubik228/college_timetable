# frozen_string_literal: true

class Lesson < ApplicationRecord
  belongs_to :group
  belongs_to :teacher
  validates :subject, presence: true
  validates :day_on_wek, presence: true
end