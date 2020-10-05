class BottleCount
  attr_reader :count

  def initialize(count)
    @count = count
  end

  def container
    if count == 1
      "bottle"
    else
      "bottles"
    end
  end

  def pronoun
    if count == 1
      "it"
    else
      "one"
    end
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
