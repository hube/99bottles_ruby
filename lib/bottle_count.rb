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

  def self.handles?(count)
    true
  end

  def self.for(count)
    @registry.find { |klass| klass.handles?(count) }.new(count)
  end

  def self.registry
    @registry ||= [BottleCount]
  end

  def self.register(klass)
    registry.prepend(klass)
  end

  def self.inherited(klass)
    register(klass)
  end
end
