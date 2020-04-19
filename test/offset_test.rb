require_relative 'test_helper.rb'
require 'mocha/minitest'
require 'time'
require 'date'
require './lib/offset'

class OffsetTest < Minitest::Test
  def setup
    @offset = Offset.new
  end

  def test_it_exists
    assert_instance_of Offset, @offset
  end

  def test_offset_date
    #stubs use case here?
    todays_date = '190420'
    # todays_date = Time.now.strftime("%d%m%y")
    assert_equal todays_date, @offset.date
  end

  def test_create_offsets
    @offset.generate
    assert_equal 6, @offset.a_offset
    assert_equal 4, @offset.b_offset
    assert_equal 0, @offset.c_offset
    assert_equal 0, @offset.d_offset
  end
end
