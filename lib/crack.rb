require_relative 'decrypt'

class Crack

  def initialize(message, date = Time.now)
    @message = message
    @date = date
    @decrypt = Decrypt.new
  end

def brute_force
  9_999.times do |x|
    x = []
    @decrypt.decrypted_message(@message, )





  end
