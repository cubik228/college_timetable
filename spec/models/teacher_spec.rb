# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Teacher, type: :model do
  context 'factory' do
    it 'has a valid factory teacher model ' do
      expect(build(:teacher)).to be_valid
    end
  end
  context 'validete' do
    it 'is valid with valid attributes' do
      lesson = Lesson.create(subject: 'Math', day_on_wek: 1)
      teacher = Teacher.new(name: 'Mr. Smith', room: '101', lesson: lesson)
      expect(teacher).to be_valid
    end
  
    it 'is not valid without a name' do
      teacher = Teacher.new(name: nil)
      expect(teacher).to_not be_valid
    end
  
    it 'is not valid without a room' do
      teacher = Teacher.new(room: nil)
      expect(teacher).to_not be_valid
    end
  end
  context 'communications' do
    it { should belong_to(:lesson) }
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:room) }
  end
end
