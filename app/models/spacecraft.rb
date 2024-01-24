class Spacecraft < ApplicationRecord
  validates_presence_of :x, :y, :z, :direction

  def move_forward
    self.y += 1 if direction == 'N'
    self.y -= 1 if direction == 'S'
    self.x += 1 if direction == 'E'
    self.x -= 1 if direction == 'W'
  end

  def move_backward
    case direction
    when 'N' then move_along_axis(:y, -1)
    when 'S' then move_along_axis(:y, 1, max_bound: 9_999_999)
    when 'E' then move_along_axis(:x, -1)
    when 'W' then move_along_axis(:x, 1, max_bound: 9_999_999)
    end
  end

  private

  def move_along_axis(axis, step, max_bound: nil)
    self.send("#{axis}=", self.send(axis) + step) unless max_bound_reached?(axis, step, max_bound)
  end

  def max_bound_reached?(axis, step, max_bound)
    max_bound && (self.send(axis) + step).send(axis == :y ? :zero? : :>=, max_bound)
  end
end
