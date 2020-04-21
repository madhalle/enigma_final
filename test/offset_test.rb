require_relative 'test_helper.rb'
require 'mocha/minitest'
require 'time'
# require 'timecop'
require 'date'
require './lib/offset'

class OffsetTest < Minitest::Test
  def setup
    @offset = Offset.new
  end

  def test_it_exists
    assert_instance_of Offset, @offset
  end

  def test_create_date
    @offset.create_date
    date = Time.now.strftime("%d%m%y")
    # date1 = (Timecop.freeze(Date.today))
    assert_equal date, @offset.offset_date
  end

  def test_create_offsets
    expected = {:offsets=>{:A=>6, :B=>4, :C=>0, :D=>0}, :date=>"210420"}
    assert_equal expected, @offset.generate
  end
end
