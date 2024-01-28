# frozen_string_literal: true

FactoryBot.define do
  factory :group do
    name { Faker::Lorem.sentence(word_count: 10) }
    teacher
  end
end
