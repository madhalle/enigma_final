require_relative 'test_helper.rb'
require './lib/key'
require 'mocha/minitest'

class KeyTest < Minitest::Test
  def setup
    @key = Key.new
  end
  
  def test_it_exists
    assert_instance_of Key, @key
  end
end
