require_relative 'bottle_count'

class BottleCount1 < BottleCount
  def container
    "bottle"
  end

  def pronoun
    "it"
  end

  def self.handles?(count)
    count == 1
  end
end
