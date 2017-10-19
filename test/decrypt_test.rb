require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/decrypt'
require 'pry'


class DecryptTest < Minitest::Test

  def test_decrypt_exists
    decrypt = Decrypt.new("$JD)@Vs", "41521")

    assert_instance_of Decrypt, decrypt
  end

  def test_it_can_find_decrypted_character
    decrypt = Decrypt.new("<e2Sz5f", "41521")

    assert_equal "a", decrypt.decrypt_character("z", 25)
  end


  def test_the_message_can_be_grouped_by_four
    decrypt = Decrypt.new(":j%X^l1jL <g", "41521")
    divided = decrypt.split_into_groups_of_four

    assert_equal [":j%X", "^l1j", "L <g"], divided
  end

  def test_the_message_can_be_split_with_spaces
    decrypt = Decrypt.new("gO9$l;)3Eb% ", "41521")
    divided = decrypt.split_into_groups_of_four

    assert_equal ["gO9$", "l;)3", "Eb% "], divided
  end
end
