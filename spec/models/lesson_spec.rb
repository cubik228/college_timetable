# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Lesson, type: :model do
  it 'has a valid factory lesson model' do
    expect(build(:lesson)).to be_valid
  end
end
