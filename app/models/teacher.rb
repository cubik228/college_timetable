# frozen_string_literal: true

class Teacher < ApplicationRecord
  belongs_to :lesson
end