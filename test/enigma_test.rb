require 'minitest/autorun'
require 'minitest/pride'
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
    assert_equal 5 || 4, @enigma.key[:key].length


    expected2 = {:offsets=>{:A=>6, :B=>4, :C=>0, :D=>0}, :date=>"200420"}
    assert_equal expected2, @enigma.date
    assert_instance_of Hash, @enigma.date

    assert_equal [], @enigma.alphabet
  end

end
