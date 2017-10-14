require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/offset_calculator'
require 'pry'


class OffsetCalculatorTest < Minitest::Test

  def test_off_set_calculator_exists
    offset = OffsetCalculator.new

    assert_instance_of OffsetCalculator, offset
  end

  def test_date_format_returns_at_date
    offset = OffsetCalculator.new

    assert_equal 101417, offset.formated_date
  end

end
