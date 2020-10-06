require_relative 'bottle_count'

class BottleCount6 < BottleCount
  def container
    "six-pack"
  end

  def quantity
    "1"
  end

  def self.handles?(count)
    count == 6
  end
end
