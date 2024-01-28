require 'rails_helper'

RSpec.describe Timetable, type: :model do
  context 'factory' do
    it 'has a valid factory еimetable model' do
      expect(build(:timetable)).to be_valid
    end
  end
  context 'validete' do
    it 'is valid with valid attributes' do
      group = Group.create(name: 'Group 1')
      timetable = Timetable.new(number: 1, group: group)
      expect(timetable).to be_valid
    end
  
    it 'is not valid without a number' do
      timetable = Timetable.new(number: nil)
      expect(timetable).to_not be_valid
    end
  end
  context 'communications' do
    it { should belong_to(:group) }
    it { should have_many(:lessons) }
  end
end
