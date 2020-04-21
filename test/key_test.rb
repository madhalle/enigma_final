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

  def test_random_number_generator
    @key.random_number_generator
    assert_equal 5, @key.key.length
    @key.stubs(:rand).returns("5188")
    @key.random_number_generator
    assert_equal "05188", @key.key
  end

  def test_it_has_keys
    @key.stubs(:rand).returns("5188")
    @key.generate

    expected = {:A => 05, :B => 51, :C => 18, :D => 88}
    assert_equal expected, @key.keys
  end

end
