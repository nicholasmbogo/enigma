module CharacterMap

  def encrypt_dictionary
    "abcdefghijklmnopqrstuvwxyz0123456789 ,."
  end

  def decrypt_dictionary
    encrypt_dictionary.reverse
  end

  def encrypt_character(character, rotation)
    character_location = encrypt_dictionary.index(character)
    encrypt_location = (rotation + character_location) % encrypt_dictionary.length
    encrypt_dictionary[encrypt_location]
  end

  def decrypt_character(character, rotation)
    character_location = decrypt_dictionary.index(character)
    encrypt_location = (rotation + character_location) % decrypt_dictionary.length
    decrypt_dictionary[encrypt_location]
  end

end
