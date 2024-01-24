# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Teacher, type: :model do
  context 'factory' do
    it 'has a valid factory teacher model ' do
      expect(build(:teacher)).to be_valid
    end
  end
  
  describe 'Validations in model' do
    context 'has Validations for name' do
    it { is_expected.to  validate_presence_of(:name) }
    end

    context 'has Validations for room' do
      it { is_expected.to  validate_presence_of(:room) }
    end
  end

  describe 'Validations' do
    context 'when has attributes' do
      it 'is valid with valid attributes' do
        teacher = build(:teacher)
        expect(teacher).to be_valid
      end
    end
  end
end