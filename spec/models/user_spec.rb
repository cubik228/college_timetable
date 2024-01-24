require 'rails_helper'

RSpec.describe User, type: :model do

  context 'factory' do
    it 'has a valid factory teacher model ' do
      expect(build(:teacher)).to be_valid
    end
  end

  describe 'Validations' do
    context 'when has attributes' do
      it 'is valid with valid attributes' do
        user = build(:user)
        expect(user).to be_valid
      end
    end
    context 'when missing attributes' do
      it 'is not valid without an email' do
        user = build(:user, email: nil)
        expect(user).not_to be_valid
      end
      it 'is not valid without an password' do
        user = build(:user, password: nil)
        expect(user).not_to be_valid
      end
    end
  end
end