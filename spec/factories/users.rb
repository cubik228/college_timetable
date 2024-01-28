# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { 'password123' }
    encrypted_password { 'password123' } # Placeholder for encrypted password
    reset_password_token { nil } # Placeholder for reset password token
    reset_password_sent_at { nil } # Placeholder for reset password sent at
    remember_created_at { nil } # Placeholder for remember created at
  end
end
