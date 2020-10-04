class Bottles
  def verse(verse_num)
    case verse_num
    when 1
      "1 bottle of beer on the wall, " +
      "1 bottle of beer.\n" +
      "Take it down and pass it around, " +
      "no more bottles of beer on the wall.\n"
    when 0
      "No more bottles of beer on the wall, " +
      "no more bottles of beer.\n" +
      "Go to the store and buy some more, " +
      "99 bottles of beer on the wall.\n"
    else
      "#{verse_num} bottles of beer on the wall, " +
      "#{verse_num} bottles of beer.\n" +
      "Take one down and pass it around, " +
      "#{verse_num - 1} #{container(verse_num - 1)} of beer on the wall.\n"
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
end
