# frozen_string_literal: true

class Lesson < ApplicationRecord
  belongs_to :group
  belongs_to :teacher
end