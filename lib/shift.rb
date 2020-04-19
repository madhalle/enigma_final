require_relative 'key'
require_relative 'offset'

class Shift
  attr_reader :a_shift, :b_shift, :c_shift, :d_shift
  def initialize
    @a_shift = 0
    @b_shift = 0
    @c_shift = 0
    @d_shift = 0
  end

  def generate(key, offset)
    @a_shift = key.a_key + offset.a_offset
    @b_shift = key.b_key + offset.b_offset
    @c_shift = key.c_key + offset.c_offset
    @d_shift = key.d_key + offset.d_offset
  end
end
