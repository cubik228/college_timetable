# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Group, type: :model do
  context 'factory' do
    it 'has a valid factory group model' do
      expect(build(:group)).to be_valid
    end
  end

  describe 'Validations in model' do
    context 'has Validations for name' do
      it { is_expected.to validate_presence_of(:name) }
    end
  end
  describe 'Validations' do
    context 'when has attributes' do
      it 'is valid with valid attributes' do
        group = build(:group)
        expect(group).to be_valid
      end
    end

    context 'when missing attributes' do
      it 'is not valid without a teacher_id' do
        group = build(:group, teacher_id: nil)
        expect(group).not_to be_valid
      end
    end
  end
end
