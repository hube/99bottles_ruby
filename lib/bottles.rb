class Bottles
  def verse(verse_num)
    case verse_num
    when 0
      "No more bottles of beer on the wall, " +
      "no more bottles of beer.\n" +
      "Go to the store and buy some more, " +
      "99 bottles of beer on the wall.\n"
    else
      "#{verse_num} #{container(verse_num)} of beer on the wall, " +
      "#{verse_num} #{container(verse_num)} of beer.\n" +
      "Take #{pronoun(verse_num)} down and pass it around, " +
      "#{quantity(verse_num - 1)} #{container(verse_num - 1)} of beer on the wall.\n"
    end
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
      count
    end
  end
end
