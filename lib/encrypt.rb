require './lib/character_map'
require './lib/offset_calculator'
require './lib/character_map'

require 'pry'

class Encrypt
  include CharacterMap

  attr_reader :message, :rotations, :character_map, :character

  def initialize(message, rotation = nil)
    @message = message
    @offsets = OffsetCalculator.new
    @rotation = @offsets.final_rotation
    @encrypted_message = []
  end

  def split_message
    @message.chars
  end

  def split_into_groups_of_four
    chunks = []
    split_message.each_slice(4) do |chunk|
      chunks << chunk
    end
    chunks
  end

  #Remember to change "rotations" back to "rotation"...
  #"rotations" is only for testing.

  def translate_chunks
    split_into_groups_of_four.map do |chunk|
      @encrypted_message << encrypt_character(chunk[0], @rotation[:a])
      if chunk[1] != nil
      @encrypted_message << encrypt_character(chunk[1], @rotation[:b]) end
      if chunk[2] != nil
      @encrypted_message << encrypt_character(chunk[2], @rotation[:c]) end
      if chunk[3] != nil
      @encrypted_message << encrypt_character(chunk[3], @rotation[:d]) end
    end
  end

  def encrypted_message
    translate_chunks
    @encrypted_message.join
  end

end

d = Encrypt.new("there can only be one", {a: 40, b: 21, c: 34, d: 29})
puts d.encrypted_message
