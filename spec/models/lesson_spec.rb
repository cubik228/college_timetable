# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Lesson, type: :model do
  context 'factory' do
    it 'has a valid factory lesson model' do
      expect(build(:lesson)).to be_valid
    end
  end
  context 'validete' do
    it 'is valid with valid attributes' do
      timetable = Timetable.create(number: 1)
      lesson = Lesson.new(subject: 'Math', day_on_wek: 1, timetable: timetable)
      expect(lesson).to be_valid
    end
  
    it 'is not valid without a subject' do
      lesson = Lesson.new(subject: nil)
      expect(lesson).to_not be_valid
    end
  
    it 'is not valid without a day_on_wek' do
      lesson = Lesson.new(day_on_wek: nil)
      expect(lesson).to_not be_valid
    end
  end
  context 'communications' do
    it { should belong_to(:timetable) }
    it { should have_many(:teachers) }
    it { should validate_presence_of(:subject) }
    it { should validate_presence_of(:day_on_wek) }
  end

end
