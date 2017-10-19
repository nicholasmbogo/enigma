require './lib/character_map'
require './lib/offset_calculator'
require './lib/character_map'
require 'pry'

class Encrypt
  include CharacterMap

  attr_reader :message, :rotations, :character_map, :character, :key_print, :date_print

  def initialize(message, rotation = nil)
    @message = message
    @offsets = OffsetCalculator.new
    @rotation = @offsets.final_rotation
    @encrypted_message = []
    @date_print = @offsets.formated_date
    @key_print = @offsets.key_print

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

  def translate_chunks
    split_into_groups_of_four.map do |chunk|
      @encrypted_message << encrypt_character(chunk[0], @rotation[:a])
      if chunk[1] != nil
        @encrypted_message << encrypt_character(chunk[1], @rotation[:b])
      end
      if chunk[2] != nil
        @encrypted_message << encrypt_character(chunk[2], @rotation[:c])
      end
      if chunk[3] != nil
        @encrypted_message << encrypt_character(chunk[3], @rotation[:d])
      end
    end
  end

  def encrypted_message
    translate_chunks
    @encrypted_message.join
  end
end


    if ARGV.empty? == false
    file1 = File.open(ARGV[0], "r")
    message_to_encrypt = file1.read
    file1.close
    encrypt = Encrypt.new(message_to_encrypt)
    encrypted_text = encrypt.encrypted_message
    file2 = File.open(ARGV[1], "w")
    file2.write(encrypted_text)
    file2.close

    puts "Created '#{ARGV[1]}' with the key #{encrypt.key_print} and date #{encrypt.date_print}."
end
