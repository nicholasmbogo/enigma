class OffsetCalculator

  attr_reader :key

  def initialize(key, date = Time.now)
    @date = date
    @key = key
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

  def key_array
    @key.to_s.chars.map{|num| num.to_i}
  end

  def a_rotation
    key_array[0..1].join.to_i
  end

  def b_rotation
    key_array[1..2].join.to_i
  end

  def c_rotation
    key_array[2..3].join.to_i
  end

  def d_rotation
    key_array[-2..-1].join.to_i
  end

  def final_rotation
    {a: a_rotation + a_offset,
     b: b_rotation + b_offset,
     c: c_rotation + c_offset,
     d: d_rotation + d_offset}
  end
end
