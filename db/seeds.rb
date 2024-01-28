# frozen_string_literal: true
# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.destroy_all

5.times do |index|
  User.create!(email: Faker::Internet.email,
               password: Faker::Internet.password,
               reset_password_token: Faker::Internet.domain_word,
               reset_password_sent_at: Faker::Date.forward(days: 23),
               remember_created_at: Faker::Date.forward(days: 23))
end

puts "Created #{User.count} users"

Group.destroy_all

5.times do |index|
  Group.create!(name: Faker::IDNumber.valid,
                user_id: User.pluck(:id).sample)
end
puts "Created #{Group.count} groups"

Timetable.destroy_all

5.times do |index|
  Timetable.create!(number: Faker::IDNumber.invalid,
                    group_id: Group.pluck(:id).sample)
end

puts "Created #{Timetable.count} timetables"

Lesson.destroy_all

5.times do |index|
  Lesson.create!(subject: Faker::Science.science(:formal, :applied),
                 timetable_id: Timetable.pluck(:id).sample,
                 day_on_wek: Faker::Number.between(from: 0, to: 6))
end

puts "Created #{Lesson.count} lessons"


Teacher.destroy_all

5.times do |index|
  Teacher.create!(name: Faker::Name.name,
                  room: Faker::House.room,
                  lesson_id: Lesson.pluck(:id).sample)
end
puts "Created #{Teacher.count} teachers"







