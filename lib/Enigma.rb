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
    crack.crack_message
  end

end

# require './lib/enigma'
# e = Enigma.new
# my_message = "this is so secret ..end.."
# output = e.encrypt(my_message, "12345", Date.today)
# puts e.decrypt(output, "12345", Date.today)
# e.crack(output, Date.today)
# e.crack(output)
