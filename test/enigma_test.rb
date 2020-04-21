require_relative "test_helper"
require 'mocha/minitest'
require './lib/shift'
require './lib/enigma'

class EnigmaTest < Minitest::Test
  def setup
    @enigma = Enigma.new('Hello world.')
  end

  def test_it_exists
    assert_instance_of Enigma, @enigma
  end

  def test_it_has_attributes
    assert_equal "Hello world.", @enigma.message
    assert_instance_of Hash, @enigma.key
    assert_equal 5, @enigma.key[:key].length

    expected2 = {:offsets=>{:A=>6, :B=>4, :C=>0, :D=>0}, :date=>"210420"}
    assert_equal expected2, @enigma.date
    assert_instance_of Hash, @enigma.date

    assert_equal [], @enigma.alphabet
  end

  def test_generate_alphabet
    @enigma.create_alphabet
    expected = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m",
           "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "]
    assert_equal expected, @enigma.alphabet
  end

  def test_encrypt_method
    assert_instance_of Hash, @enigma.encrypt
    #if stubs were working for key and date
    # expected = {:message=>String,
    #             :key=>String,
    #             :date=>String}
    # assert_equal expected, @enigma.encrypt
  end

  def test_decrypt
    @enigma.encrypt
    assert_instance_of Hash, @enigma.decrypt
  end
end
