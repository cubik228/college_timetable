# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  context 'factory' do
    it 'has a valid factory user model' do
      expect(build(:user)).to be_valid
    end
  end
  context 'validete' do
    

    it 'is not valid without an email' do
      user = User.new(email: nil)
      expect(user).to_not be_valid
    end

    it 'is not valid without an encrypted_password' do
      user = User.new(encrypted_password: nil)
      expect(user).to_not be_valid
    end
  end
  context 'communications' do
    it { should have_many(:groups) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:encrypted_password) }
  end
  
end
