require "./lib/encrypt"
require "./lib/decrypt"
require "./lib/crack"
require 'Time'

class Enigma

  def encrypt(message, key = nil, date = Date.today)
    encrypt = Encrypt.new(message, key, date)
    encrypt.encrypted_message
  end

  def decrypt(message, key = nil, date = Date.today)
    decrypt = Decrypt.new(message, key, date)
    decrypt.decrypted_message
  end

  def crack(message, date = Date.today)
    crack = Crack.new(message, date)
    crack.crack_message(message)
  end

end
