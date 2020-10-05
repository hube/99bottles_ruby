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
    if count == 0
      "no more"
    else
      count.to_s
    end
  end

  def action
    if count == 0
      "Go to the store and buy some more"
    else
      "Take #{pronoun} down and pass it around"
    end
  end

  def successor
    if count == 0
      99
    else
      count - 1
    end
  end

  def to_s
    "#{quantity} #{container}"
  end
end
