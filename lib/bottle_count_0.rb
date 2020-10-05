require_relative 'bottle_count'

class BottleCount0 < BottleCount
  def quantity
    "no more"
  end

  def action
    "Go to the store and buy some more"
  end

  def successor
    BottleCount.for(99)
  end
end
