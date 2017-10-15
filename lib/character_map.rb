class CharacterMap

  attr_reader :dictionary

  def initialize
    @dictionary = "abcdefghijklmnopqrstuvwxyz0123456789 .,"
  end

  def encrypt_character(character, rotation)
    character_location = dictionary.index(character)
    encrypt_location = (rotation + character_location) % dictionary.length
    dictionary[encrypt_location]
  end
end
