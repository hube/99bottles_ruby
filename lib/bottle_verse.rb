require_relative 'bottle_count'
require_relative 'bottle_count_0'
require_relative 'bottle_count_1'
require_relative 'bottle_count_6'

class BottleVerse
  attr_reader :verse_num

  def initialize(verse_num)
    @verse_num = verse_num
  end

  def self.lyrics(verse_num)
    new(verse_num).lyrics
  end

  def lyrics
    bottle_count = BottleCount.for(verse_num)

    "#{bottle_count} of beer on the wall, ".capitalize +
    "#{bottle_count} of beer.\n" +
    "#{bottle_count.action}, " +
    "#{bottle_count.successor} of beer on the wall.\n"
  end
end
