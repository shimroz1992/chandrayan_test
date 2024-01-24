# spec/models/spacecraft_spec.rb
require 'rails_helper'

RSpec.describe Spacecraft, type: :model do

  it 'is valid with valid attributes' do
    spacecraft = FactoryBot.build(:spacecraft)
    expect(spacecraft).to be_valid
  end

  it 'is not valid without x, y, z, or direction' do
    spacecraft = FactoryBot.build(:spacecraft, x: nil, y: nil, z: nil, direction: nil)
    expect(spacecraft).not_to be_valid
  end
end