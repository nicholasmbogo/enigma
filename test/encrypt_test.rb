require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/encrypt'
require 'pry'
require 'time'


class EncryptTest < Minitest::Test

  def test_encrypt_exists
    encrypt = Encrypt.new("message", {a: 40, b: 21, c:34, d: 29})

    assert_instance_of Encrypt, encrypt
  end

  def test_it_can_find_encrypted_character
    encrypt = Encrypt.new("message", {a: 40, b: 21, c:34, d: 29})

    assert_equal "z", encrypt.encrypt_character("a", 25)
  end

  def test_the_message_can_be_grouped_by_four
    encrypt = Encrypt.new("message", {a: 40, b: 21, c: 34, d: 29})
    divided = encrypt.split_into_groups_of_four

    assert_equal ["mess","age"], divided
  end

  def test_the_message_can_be_split_with_spaces
    encrypt = Encrypt.new("message here", {a: 40, b: 21, c: 34, d: 29})
    divided = encrypt.split_into_groups_of_four

    assert_equal ["mess","age ","here"], divided
  end

  # def test_it_can_translate_chunks
  #   encrypt = Encrypt.new("message here", {a: 40, b: 21, c: 34, d: 29})
  #
  #   assert_equal "mzmha1,0hzl7", encrypt.encrypted_message
  # end
end
