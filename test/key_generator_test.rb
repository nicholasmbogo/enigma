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

    assert_equal 5, key_generator.key.length
    #.to_s converting to sting
  end
end
