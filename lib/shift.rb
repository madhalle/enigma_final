require_relative 'key'
require_relative 'offset'

class Shift

  def generate(key, offset)
    shift_hash = Hash.new

    shift_hash[:A] = key.a_key + offset.a_offset
    shift_hash[:B] = key.b_key + offset.b_offset
    shift_hash[:C] = key.c_key + offset.c_offset
    shift_hash[:D] = key.d_key + offset.d_offset
    shift_hash
  end
end
