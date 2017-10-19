require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/character_map'
require 'pry'


class CharacterMapTest < Minitest::Test

  def test_character_map_exists
    character = CharacterMap.new

    assert_instance_of CharacterMap, character
  end

  def test_has_a_character_list
    character = CharacterMap.new
    dictionary = "abcdefghijklmnopqrstuvwxyz01234567890 ,."

    assert_equal dictionary, character.dictionary
  end

  def test_can_encrypt_character
    character = CharacterMap.new

    assert_equal "b", character.encrypt_character("a", 1)
  end

  def test_can_encrypt_character_that_wraps_everything
    character = CharacterMap.new

    assert_equal "f", character.encrypt_character("9", 10)
    assert_equal "e", character.encrypt_character("9", 49)

  end
end
