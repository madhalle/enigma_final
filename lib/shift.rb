require_relative 'key'
require_relative 'offset'

class Shift

  def generate(key, offset)
    shift_hash = Hash.new
    shift_hash[:A] = key.keys[:A] + offset.offsets[:A]
    shift_hash[:B] = key.keys[:B] + offset.offsets[:B]
    shift_hash[:C] = key.keys[:C] + offset.offsets[:C]
    shift_hash[:D] = key.keys[:D] + offset.offsets[:D]
    shift_hash
  end
end
