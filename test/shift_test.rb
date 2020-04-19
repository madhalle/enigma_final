require_relative 'test_helper.rb'
require 'date'
require './lib/shift'
require './lib/key'
require './lib/offset'

class ShiftTest < Minitest::Test
  def setup
    @shift = Shift.new

    @key = Key.new
    @offset = Offset.new
  end

  def test_it_exists
    assert_instance_of Shift, @shift
  end

  def test_it_has_attributes
    assert_equal 0, @shift.a_shift
    assert_equal 0, @shift.b_shift
    assert_equal 0, @shift.c_shift
    assert_equal 0, @shift.d_shift
  end
end
