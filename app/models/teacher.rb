# frozen_string_literal: true

class Teacher < ApplicationRecord
  belongs_to :group
  belongs_to :teacher
end
