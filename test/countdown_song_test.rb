gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/countdown_song'
require_relative 'verse_fake'

class BottlesTest < Minitest::Test
  def test_verse
    expected = "This is verse 500\n"
    assert_equal(
      expected,
      CountdownSong.new(verse_template: VerseFake)
        .verse(500))
  end

  def test_verses
    expected =
      "This is verse 99\n" +
      "\n" +
      "This is verse 98\n" +
      "\n" +
      "This is verse 97\n"
    assert_equal(
      expected,
      CountdownSong.new(verse_template: VerseFake)
        .verses(99, 97))
  end

  def test_song
    expected =
      "This is verse 25\n" +
      "\n" +
      "This is verse 24\n" +
      "\n" +
      "This is verse 23\n" +
      "\n" +
      "This is verse 22\n"
    assert_equal(
      expected,
      CountdownSong.new(
          verse_template: VerseFake,
          max: 25,
          min: 22)
        .song)
  end
end
