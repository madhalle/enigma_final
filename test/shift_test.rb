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
end
