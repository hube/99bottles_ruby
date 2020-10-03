class Bottles
  VERSE = "%s bottles of beer on the wall, " +
      "%s bottles of beer.\n" +
      "Take one down and pass it around, " +
      "%s %s of beer on the wall.\n"

  def verse(verse_num)
    last_bottle = verse_num == 2 ? "bottle" : "bottles"
    return VERSE % [verse_num, verse_num, verse_num - 1, last_bottle]
  end
end
