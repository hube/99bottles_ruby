class BottleCount
  attr_reader :count

  def initialize(count)
    @count = count
  end

  def container
    "bottles"
  end

  def pronoun
    "one"
  end

  def quantity
    count.to_s
  end

  def action
    "Take #{pronoun} down and pass it around"
  end

  def successor
    BottleCount.for(count - 1)
  end

  def to_s
    "#{quantity} #{container}"
  end

  def self.for(count)
    case count
    when 0
      BottleCount0
    when 1
      BottleCount1
    else
      BottleCount
    end.new(count)
  end
end
