require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/encrypt'
require 'pry'
require 'Time'


class EncryptTest < Minitest::Test

  def test_encrypt_exists
    encrypt = Encrypt.new("message", "41521")

    assert_instance_of Encrypt, encrypt
  end

  def test_it_can_find_encrypted_character
    encrypt = Encrypt.new("message", "41521")

    assert_equal "z", encrypt.encrypt_character("a", 25)
  end

  def test_the_message_can_be_grouped_by_four
    encrypt = Encrypt.new("message", "41521")
    divided = encrypt.split_into_groups_of_four

    assert_equal [["m", "e", "s", "s"], ["a", "g", "e"]], divided
  end

  def test_the_message_can_be_split_with_spaces
    encrypt = Encrypt.new("message here", "41521")
    divided = encrypt.split_into_groups_of_four

    assert_equal [["m", "e", "s", "s"], ["a", "g", "e", " "], ["h", "e", "r", "e"]], divided
  end

end
