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

end
