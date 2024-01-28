FactoryBot.define do
  factory :timetable do
    number { rand(1..10) }
    group
  end
end