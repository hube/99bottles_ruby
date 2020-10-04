require_relative 'bottle_count'

class Bottles
  def verse(verse_num)
    bottle_count = BottleCount.new(verse_num)
    next_bottle_count = BottleCount.new(bottle_count.successor)

    "#{bottle_count.quantity.capitalize} #{bottle_count.container} of beer on the wall, " +
    "#{bottle_count.quantity} #{bottle_count.container} of beer.\n" +
    "#{bottle_count.action}, " +
    "#{next_bottle_count.quantity} #{next_bottle_count.container} of beer on the wall.\n"
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
