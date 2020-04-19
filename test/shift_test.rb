require_relative 'test_helper.rb'
require 'date'
require './lib/shift'
require './lib/key'
require './lib/offset'
require 'mocha/minitest'


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

  def test_it_can_generate_shifts
    @key.stubs(:rand).returns("5188")
    @key.generate
    @key.split

    @offset.date
    #definitely needs a stub
    @offset.generate

    @shift.generate(@key, @offset)
    assert_equal 11, @shift.a_shift
    assert_equal 55, @shift.b_shift
    assert_equal 18, @shift.c_shift
    assert_equal 88, @shift.d_shift
  end
end
