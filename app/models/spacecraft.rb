class Spacecraft < ApplicationRecord
  validates_presence_of :x, :y, :z, :direction
end
