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

  def test_it_has_attributes
    assert_nil @key.key
    assert_equal ({}), @key.keys
  end

  def test_random_number_generator
    @key.stubs(:rand).returns("5188")
    @key.random_number_generator
    assert_equal "05188", @key.key
  end
  # def test_generate_key
  #   @key.stubs(:rand).returns("5188")
  #   assert_equal "05188", @key.generate
  # end
  #
  # def test_split_method
  #   @key.stubs(:rand).returns("5188")
  #   assert_equal "05188", @key.generate
  #   @key.split
  #   assert_equal 05, @key.a_key
  #   assert_equal 51, @key.b_key
  #   assert_equal 18, @key.c_key
  #   assert_equal 88, @key.d_key
  # end

end
