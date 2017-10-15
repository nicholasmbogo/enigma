require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/key_generator'
require 'pry'


class KeyGeneratorTest < Minitest::Test

  def test_key_generator_exists
    key_generator = KeyGenerator.new

    assert_instance_of KeyGenerator, key_generator
  end

  def test_key_has_five_digits
    key_generator = KeyGenerator.new

    assert_equal 5, key_generator.key.to_s.length
    #.to_s converting to sting
  end

#   def test_has_a_key_rotation
#     key_generator = KeyGenerator.new
#     a = key_generator.key[0..1].join.to_i
#
#     assert_equal a, key_generator.a_rotation
#   end
#
#   def test_has_b_key_rotation
#     key_generator = KeyGenerator.new
#     b = key_generator.key[1..2].join.to_i
#
#     assert_equal b, key_generator.b_rotation
#   end
#
#   def test_has_c_key_rotation
#     key_generator = KeyGenerator.new
#     #key = key_generator.key
#     c = key_generator.key[2..3].join.to_i
#
#     assert_equal c, key_generator.c_rotation
#   end
#
#   def test_has_d_key_rotation
#     key_generator = KeyGenerator.new
#     d = key_generator.key[-2..-1].join.to_i
#
#     assert_equal d, key_generator.d_rotation
#   end
 end
