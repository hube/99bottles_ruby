class Bottles
  SIXTH_VERSE = "1 six-pack of beer on the wall, " +
      "1 six-pack of beer.\n" +
      "Take one down and pass it around, " +
      "5 bottles of beer on the wall.\n"
  VERSE = "%s bottles of beer on the wall, " +
      "%s bottles of beer.\n" +
      "Take one down and pass it around, " +
      "%s %s of beer on the wall.\n"
  FINAL_VERSE = "1 bottle of beer on the wall, " +
      "1 bottle of beer.\n" +
      "Take it down and pass it around, " +
      "no more bottles of beer on the wall.\n"
  ZEROTH_VERSE = "No more bottles of beer on the wall, " +
      "no more bottles of beer.\n" +
      "Go to the store and buy some more, " +
      "99 bottles of beer on the wall.\n"

  def verse(verse_num)
    return FINAL_VERSE if verse_num == 1
    return SIXTH_VERSE if verse_num == 6
    return ZEROTH_VERSE if verse_num == 0

    last_bottle = verse_num == 2 ? "bottle" : "bottles"
    return VERSE % [verse_num, verse_num, verse_num - 1, last_bottle]
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
