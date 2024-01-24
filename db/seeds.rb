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
Teacher.destroy_all

5.times do |index|
  Teacher.create!(name: Faker::Name.name,
                  room: Faker::House.room)
end
puts "Created #{Teacher.count} teachers"

Group.destroy_all

5.times do |index|
  Group.create!(name: Faker::Name.name,
                teacher_id: Teacher.pluck(:id).sample)
end
puts "Created #{Group.count} groups"

Lesson.destroy_all

5.times do |index|
  Lesson.create!(subject: Faker::Science.science(:formal, :applied),
                 teacher_id: Teacher.pluck(:id).sample,
                 day_on_wek: Faker::Date.forward(days: 23),
                 group_id: Group.pluck(:id).sample)
end

puts "Created #{Lesson.count} lessons"
