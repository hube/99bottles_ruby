require_relative 'bottle_count'

class BottleCount0 < BottleCount
  def quantity
    "no more"
  end

  def action
    "Go to the store and buy some more"
  end

  def successor
    99
  end
end
