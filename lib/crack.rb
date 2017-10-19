require './lib/offset_calculator'
require './lib/decrypt'
class Crack

  def initialize(message, date = Time.new)

    @message = message
    @date = date
  end

  def crack_message(message)
    100000.times do |x|
      test_key = generate_key(x)
      offset_calculator = OffsetCalculator.new(test_key)
      rotations = offset_calculator.final_rotation
      decrypted_message = Decrypt.new(message, rotations).decrypted_message

      if decrypted_message[-8..-1] == " ..end.."
        return decrypted_message
      end
    end
  end
  def generate_key(number)
    string_number = number.to_s
    if string_number.length == 1
      string_number = "0000" + string_number

    elsif string_number.length == 2
      string_number = "000" + string_number

    elsif string_number.length == 3
      string_number = "00" + string_number

    elsif string_number.length == 4
      string_number = "0" + string_number
    end
    string_number
  end
end
