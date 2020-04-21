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

  def test_it_can_generate_shifts
    @key.stubs(:rand).returns("5188")
    @key.generate

    @offset.generate

    expected = {:A=>11, :B=>55, :C=>18, :D=>88}
    assert_equal expected, @shift.generate(@key, @offset)

  end
end
