# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Group, type: :model do
  context 'factory' do
    it 'has a valid factory group model' do
      expect(build(:group)).to be_valid
    end
  end
  context 'validete' do
    it 'is valid with valid attributes' do
      user = User.create(email: 'test@example.com', encrypted_password: 'password')
      group = Group.new(name: 'Group 1', user: user)
      expect(group).to be_valid
    end

    it 'is not valid without a name' do
      group = Group.new(name: nil)
      expect(group).to_not be_valid
    end
  end
  context 'communications' do
    it { should belong_to(:user) }
    it { should have_one(:timetable) }
    it { should validate_presence_of(:name) }
  end
end
