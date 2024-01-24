# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Lesson, type: :model do
  context 'factory' do
    it 'has a valid factory lesson model' do
      expect(build(:lesson)).to be_valid
    end
  end

  describe 'Validations in model' do
    context 'has Validations for subject' do
    it { is_expected.to  validate_presence_of(:subject) }
    end

    context 'has Validations for day_on_wek' do
      it { is_expected.to  validate_presence_of(:day_on_wek) }
    end
  end

  describe 'Validations' do
    context 'when has attributes' do
      it 'is valid with valid attributes' do
        group = build(:lesson)
        expect(group).to be_valid
      end
    end
  end
end
