FactoryBot.define do
  factory :lesson do
    subject { Faker::Educator.subject }
    day_on_wek { Faker::Number.between(from: 1, to: 6) }
    association :group # создайте связанную группу
    teacher
    group_id { create(:group).id } # явно указываем group_id
  end
end
