# frozen_string_literal: true

FactoryBot.define do
  factory :teacher do
    name { Faker::Name.name }
    room { Faker::Lorem.sentence(word_count: 10) }
  end
end
