class Bottles
  def verse(verse_num)
    "#{quantity(verse_num).capitalize} #{container(verse_num)} of beer on the wall, " +
    "#{quantity(verse_num)} #{container(verse_num)} of beer.\n" +
    "#{action(verse_num)}, " +
    "#{quantity(successor(verse_num))} #{container(verse_num - 1)} of beer on the wall.\n"
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
    case count
    when 1
      "bottle"
    else
      "bottles"
    end
  end

  def pronoun(count)
    if count == 1
      "it"
    else
      "one"
    end
  end

  def quantity(count)
    if count == 0
      "no more"
    else
      count.to_s
    end
  end

  def action(count)
    if count == 0
      "Go to the store and buy some more"
    else
      "Take #{pronoun(count)} down and pass it around"
    end
  end

  def successor(count)
    if count == 0
      99
    else
      count - 1
    end
  end
end
