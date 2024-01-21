# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Teacher, type: :model do
  it 'has a valid factory teacher model ' do
    expect(build(:teacher)).to be_valid
  end
end