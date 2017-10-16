class CharacterMap

  attr_reader :dictionary

  def dictionary
    @dictionary = "abcdefghijklmnopqrstuvwxyz01234567890 ,."
  end

  def encrypt_character(character, rotation)
    character_location = dictionary.index(character)
    encrypt_location = (rotation + character_location) % dictionary.length
    dictionary[encrypt_location]
  end

  #use (/\s/) for spaces??
end
