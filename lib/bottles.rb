require_relative 'bottle_count'

class Bottles
  def verse(verse_num)
    "#{quantity(verse_num).capitalize} #{container(verse_num)} of beer on the wall, " +
    "#{quantity(verse_num)} #{container(verse_num)} of beer.\n" +
    "#{action(verse_num)}, " +
    "#{quantity(successor(verse_num))} #{container(successor(verse_num))} of beer on the wall.\n"
  end

  def verses(starting_verse, ending_verse)
    starting_verse.downto(ending_verse).map do |verse_num|
      verse(verse_num)
    end.join("\n")
  end

  def song
    verses(99, 0)
  end

  private

  def container(count)
    BottleCount.new(count).container
  end

  def quantity(count)
    BottleCount.new(count).quantity
  end

  def action(count)
    BottleCount.new(count).action
  end

  def successor(count)
    BottleCount.new(count).successor
  end
end
