# frozen_string_literal: true

class Teacher < ApplicationRecord
  has_many :lessons
  has_many :groups, through: :lessons
end