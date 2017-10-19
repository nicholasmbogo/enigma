require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/crack'
require './lib/encrypt'
require 'pry'


class CrackTest < Minitest::Test

  def test_crack_class_exists
    crack = Crack.new("message")

    assert_instance_of Crack, crack
  end

  def test_can_generate_a_key
    crack = Crack.new("message")

    assert_equal "00000", crack.generate_key(0)
    assert_equal "00010", crack.generate_key(10)
    assert_equal "00100", crack.generate_key(100)
    assert_equal "01000", crack.generate_key(1000)
    assert_equal "10000", crack.generate_key(10000)
  end

  def test_can_crack_a_message
    encrypted_message = Encrypt.new("message here ..end..", "12345", Date.today).encrypted_message
    crack = Crack.new(encrypted_message, Date.today)

    assert_equal "message here ..end..", crack.crack_message
  end
end
