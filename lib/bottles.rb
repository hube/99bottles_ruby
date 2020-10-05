require_relative 'bottle_count'
require_relative 'bottle_count_0'
require_relative 'bottle_count_1'
require_relative 'bottle_count_6'

class Bottles
  def verse(verse_num)
    bottle_count = BottleCount.for(verse_num)

    "#{bottle_count} of beer on the wall, ".capitalize +
    "#{bottle_count} of beer.\n" +
    "#{bottle_count.action}, " +
    "#{bottle_count.successor} of beer on the wall.\n"
  end

  def verses(starting_verse, ending_verse)
    starting_verse.downto(ending_verse).map do |verse_num|
      verse(verse_num)
    end.join("\n")
  end

  def song
    verses(99, 0)
  end
end
