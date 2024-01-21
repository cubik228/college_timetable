# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Group, type: :model do
  it 'has a valid factory group model' do
    expect(build(:group)).to be_valid
  end
end