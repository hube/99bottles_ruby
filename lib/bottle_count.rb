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
    count - 1
  end

  def to_s
    "#{quantity} #{container}"
  end
end
