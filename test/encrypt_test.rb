require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/encrypt'
require 'pry'
require 'time'


class EncryptTest < Minitest::Test

  def test_encrypt_exists
    encrypt = Encrypt.new

    assert_instance_of Encrypt, encrypt
  end

  
end
