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
end
