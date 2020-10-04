require_relative 'bottle_count'

class Bottles
  attr_reader :bottle_count

  def initialize
    @bottle_count = nil
  end

  def verse(verse_num)
    @bottle_count ||= BottleCount.new(verse_num)

    current_verse = "#{quantity(verse_num).capitalize} #{container(verse_num)} of beer on the wall, " +
    "#{quantity(verse_num)} #{container(verse_num)} of beer.\n" +
    "#{action(verse_num)}, "

    bottle_count.count = bottle_count.successor

    current_verse + "#{quantity(successor(verse_num))} #{container(successor(verse_num))} of beer on the wall.\n"
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
    bottle_count.container
  end

  def quantity(count)
    bottle_count.quantity
  end

  def action(count)
    bottle_count.action
  end

  def successor(count)
    bottle_count.successor
  end
end
