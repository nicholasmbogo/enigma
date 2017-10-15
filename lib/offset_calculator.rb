class OffsetCalculator

  def initialize(date = Time.now)
    @date = date
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
end
