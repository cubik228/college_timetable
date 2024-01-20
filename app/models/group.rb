class Group < ApplicationRecord
  has_many :lessons
  belongs_to :teacher
end
