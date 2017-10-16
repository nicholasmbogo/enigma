require './lib/character_map'
require './lib/offset_calculator'
require 'pry'

class Decrypt

  attr_reader :message, :rotations, :character_map

  def initialize(message, rotations)
    @message = message
    @character_map = CharacterMap.new
    @offsets = OffsetCalculator.new
    @rotation = @offsets.final_rotation
    @rotations = rotations
    @decrypted_message = []
  end

  def dictionary
    @character_map.dictionary.reverse
  end

  def decrypt_character(character, rotation)
    character_location = dictionary.index(character)
    encrypt_location = (rotation + character_location) % dictionary.length
    dictionary[encrypt_location]
  end

  def split_message
    @message.chars
  end

  def split_into_groups_of_four
    chunks = []
    split_message.each_slice(4) do |chunk|
      chunks << chunk.join
    end
    chunks
  end

  def translate_chunk
    split_into_groups_of_four.map do |chunk|
      @decrypted_message << decrypt_character(chunk[0], @rotations[:a])
      if chunk[1] != nil
      @decrypted_message << decrypt_character(chunk[1], @rotations[:b]) end
      if chunk[2] != nil
      @decrypted_message << decrypt_character(chunk[2], @rotations[:c]) end
      if chunk[3] != nil
      @decrypted_message << decrypt_character(chunk[3], @rotations[:d]) end
    end
  end

  def decrypted_message
    translate_chunk
    @decrypted_message.join
  end

end

d = Decrypt.new("f9ogtf5dnz50aa5eia", {a: 40, b: 21, c: 34, d: 29})
puts d.decrypted_message
