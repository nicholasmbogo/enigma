require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/offset_calculator'
require 'pry'
require 'time'


class OffsetCalculatorTest < Minitest::Test

  def test_off_set_calculator_exists
    offset = OffsetCalculator.new(41521, date)

    assert_instance_of OffsetCalculator, offset
  end

  def test_date_format_returns_at_date
    date = Time.parse(" 2017-10-14 13:54:41 -0600")
    offset = OffsetCalculator.new(41521, date)

    assert_equal 101417, offset.formated_date
  end

  def test_formated_date_is_squared
    #date = Time.parse(" 2017-10-14 13:54:41 -0600")
    offset = OffsetCalculator.new(41521, date)

    assert_equal 10285407889, offset.squared_date
  end

  def test_can_return_the_last_four_digit_of_formatted_date
    date = Time.parse(" 2017-10-14 13:54:41 -0600")
    offset = OffsetCalculator.new(41521, date)

    assert_equal 7889, offset.get_last_four
  end

  def test_can_replace_signed_last_four_digits_to_four_letters
    date = Time.parse(" 2017-10-14 13:54:41 -0600")
    offset = OffsetCalculator.new(41521, date)
    a = 7
    b = 8
    c = 8
    d = 9

    assert_equal a, offset.a_offset
    assert_equal b, offset.b_offset
    assert_equal c, offset.c_offset
    assert_equal d, offset.d_offset
  end

  def test_has_a_final_rotation
    date = Time.parse(" 2017-10-14 13:54:41 -0600")
    offset = OffsetCalculator.new(41521, date)

    expected = {a: 48, b: 23, c:60, d:30}
    #{a: 48, b: 23, c:60, d:30}rotation + offset

    assert_equal expected, offset.final_rotation
  end

end
