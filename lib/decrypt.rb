require './lib/character_map'
require './lib/offset_calculator'
require './lib/character_map'
require 'pry'
require 'Time'

class Decrypt
  include CharacterMap

  attr_reader :message, :rotations, :character_map

  def initialize(message, key, date = Date.today)
    @message = message
    @offsets = OffsetCalculator.new(key, date)
    @rotations = @offsets.final_rotation
    @decrypted_message = []
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

  #Remember to change "rotations" back to "rotation"...
  #"rotations" is only for testing.

  def translate_chunks
    split_into_groups_of_four.map do |chunk|
        @decrypted_message << decrypt_character(chunk[0], @rotations[:a])
      if chunk[1] != nil
        @decrypted_message << decrypt_character(chunk[1], @rotations[:b])
      end
      if chunk[2] != nil
        @decrypted_message << decrypt_character(chunk[2], @rotations[:c])
      end
      if chunk[3] != nil
        @decrypted_message << decrypt_character(chunk[3], @rotations[:d])
      end
    end
  end

  def decrypted_message
    translate_chunks
    @decrypted_message.join
  end

end
