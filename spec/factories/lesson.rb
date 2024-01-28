# frozen_string_literal: true

FactoryBot.define do
  factory :lesson do
    subject { Faker::Educator.subject }
    timetable
    day_on_wek { rand(1..7) }
  end
end