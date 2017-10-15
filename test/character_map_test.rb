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

  
end
