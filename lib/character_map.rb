require_relative 'key_generator'
require_relative 'offset_calculator'
require 'pry'

class CharacterMap

  def initialize
    @offset = OffsetCalculator.new
    @key_gen = KeyGenerator.new
  end

  def lower_case_alphabet
     ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
  end

  def import_key_generator
    @key_gen.create_key
  end

  def calc_total_rotation_a
    @key_gen.calc_a_rotation + @offset.a_offset
  end

  def calc_total_rotation_b
    @key_gen.calc_b_rotation + @offset.b_offset
  end

  def calc_total_rotation_c
    @key_gen.calc_c_rotation + @offset.c_offset
  end

  def calc_total_rotation_d
    @key_gen.calc_d_rotation + @offset.d_offset
  end

end

#the encrypt and decrypt classes will contain a hash with each letter key assigned
# to alphabet_array.cycle(rotation_total).  The decrypt class will .reverse
#the array before cycling.
