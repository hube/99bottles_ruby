class Bottles
  VERSE = "%s bottles of beer on the wall, " +
      "%s bottles of beer.\n" +
      "Take one down and pass it around, " +
      "%s bottles of beer on the wall.\n"
  VERSE_2 = "2 bottles of beer on the wall, " +
      "2 bottles of beer.\n" +
      "Take one down and pass it around, " +
      "1 bottle of beer on the wall.\n"
  VERSE_1 = "1 bottle of beer on the wall, " +
      "1 bottle of beer.\n" +
      "Take it down and pass it around, " +
      "no more bottles of beer on the wall.\n"
  VERSE_0 = "No more bottles of beer on the wall, " +
      "no more bottles of beer.\n" +
      "Go to the store and buy some more, " +
      "99 bottles of beer on the wall.\n"

  def verse(verse_num)
    case verse_num
    when 2
      VERSE_2
    when 1
      VERSE_1
    when 0
      VERSE_0
    else
      VERSE % [verse_num, verse_num, verse_num - 1]
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
end
