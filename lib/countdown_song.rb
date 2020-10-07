require_relative 'bottle_verse'

class CountdownSong
  attr_reader :verse_template, :max, :min

  def initialize(verse_template:, max: 9999999, min: 0)
    @verse_template = verse_template
    @max, @min = max, min
  end

  def verse(verse_num)
    verse_template.lyrics(verse_num)
  end

  def verses(starting_verse, ending_verse)
    starting_verse.downto(ending_verse).map do |verse_num|
      verse(verse_num)
    end.join("\n")
  end

  def song
    verses(max, min)
  end
end
