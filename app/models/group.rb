# frozen_string_literal: true

class Group < ApplicationRecord
  has_many :lessons
  belongs_to :teacher
  validates :name, presence: true
end
