require_relative 'key_generator'

class OffsetCalculator

  attr_reader :key

  def initialize(key = nil, date = Time.now)
    @date = date
    @key_gen = KeyGenerator.new(key)
  end

  def formated_date
    @date.strftime("%m%d%y").to_i
  end

  def squared_date
    formated_date ** 2
  end

  def get_last_four
    squared_date.to_s[-4..-1].to_i
  end

  def a_offset
    get_last_four.to_s.chars.first.to_i
  end

  def b_offset
    get_last_four.to_s[1].to_i
  end

  def c_offset
    get_last_four.to_s[-2].to_i
  end

  def d_offset
    get_last_four.to_s[-1].to_i
  end

  def final_rotation
    @key_gen.create_key
    {a: @key_gen.a_rotation + a_offset,
     b: @key_gen.b_rotation + b_offset,
     c: @key_gen.c_rotation + c_offset,
     d: @key_gen.d_rotation + d_offset}
  end
end
