require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/key_generator'
require 'pry'


class KeyGeneratorTest < Minitest::Test

  def test_key_generator_exists
    key_generator = KeyGenerator.new(41521)

    assert_instance_of KeyGenerator, key_generator
  end

  def test_key_has_five_digits
    key_generator = KeyGenerator.new(41521)

    assert_equal 5, key_generator.key.length
  end

 def test_has_a_key_rotation
   key_gen = KeyGenerator.new(41521)


   assert_equal 41, key_gen.a_rotation
 end

 def test_has_b_key_rotation
   key_gen = KeyGenerator.new(41521)

   assert_equal 15, key_gen.b_rotation
 end

 def test_has_c_key_rotation
   key_gen = KeyGenerator.new(41521)

   assert_equal 52, key_gen.c_rotation
 end

 def test_has_d_key_rotation
   key_gen = KeyGenerator.new(41521)

   assert_equal 21, key_gen.d_rotation
 end

end
