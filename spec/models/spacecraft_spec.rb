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

  describe '#move_forward' do
    it 'moves the spacecraft one step forward in the current direction' do
      spacecraft = Spacecraft.new(x: 0, y: 0, z: 0, direction: 'N')
      spacecraft.move_forward
      expect(spacecraft.y).to eq(1)
    end
  end

  describe '#move_backward' do
    it 'moves the spacecraft one step backward in the current direction' do
      spacecraft = Spacecraft.new(x: 0, y: 0, z: 0, direction: 'N')
      spacecraft.move_backward
      expect(spacecraft.y).to eq(-1)
    end

    it 'does not allow the spacecraft to move beyond galactic boundaries' do
      spacecraft = Spacecraft.new(x: 0, y: 0, z: 0, direction: 'W')
      spacecraft.move_backward
      expect(spacecraft.x).to eq(1) # Should not move beyond the boundary
    end
  end
  describe '#turn_right' do
    it 'turns the spacecraft 90 degrees to the right' do
      spacecraft = Spacecraft.new(x: 0, y: 0, z: 0, direction: 'N')
      spacecraft.turn_right
      expect(spacecraft.direction).to eq('E')
    end
  end

  describe '#turn_left' do
    it 'turns the spacecraft 90 degrees to the left' do
      spacecraft = Spacecraft.new(x: 0, y: 0, z: 0, direction: 'N')
      spacecraft.turn_left
      expect(spacecraft.direction).to eq('W')
    end
  end

  describe '#turn_up' do
    it 'turns the spacecraft upwards' do
      spacecraft = Spacecraft.new(x: 0, y: 0, z: 0, direction: 'N')
      spacecraft.turn_up
      expect(spacecraft.direction).to eq('Up')
    end
  end

  describe '#turn_down' do
    it 'turns the spacecraft downwards' do
      spacecraft = Spacecraft.new(x: 0, y: 0, z: 0, direction: 'Up')
      spacecraft.turn_down
      expect(spacecraft.direction).to eq('Down')
    end
  end
end
