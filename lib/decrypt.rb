require './lib/character_map'
require './lib/offset_calculator'
require './lib/character_map'
require 'pry'

class Decrypt
  include CharacterMap

  attr_reader :message, :rotations, :character_map

  def initialize(message, rotations)
    @message = message
    @rotations = rotations
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

if ARGV.empty? == false
file1 = File.open(ARGV[0], "r")
message_to_decrypt = file1.read.chomp
file1.close
decrypt = Decrypt.new(message_to_decrypt, "ARGV[2]", ARGV[3].to_i)
decrypted_text = decrypt.decrypted_message
file2 = File.open(ARGV[1], "w")
file2.write(decrypted_text)
file2.close
puts "Created '#{ARGV[1]}' with the key #{ARGV[2]} and date #{ARGV[3]}."
end
