class Bottles
  VERSE = "%s bottles of beer on the wall, " +
      "%s bottles of beer.\n" +
      "Take one down and pass it around, " +
      "%s %s of beer on the wall.\n"
  FINAL_VERSE = "1 bottle of beer on the wall, " +
      "1 bottle of beer.\n" +
      "Take it down and pass it around, " +
      "no more bottles of beer on the wall.\n"

  def verse(verse_num)
    return FINAL_VERSE if verse_num == 1

    last_bottle = verse_num == 2 ? "bottle" : "bottles"
    return VERSE % [verse_num, verse_num, verse_num - 1, last_bottle]
  end
end
