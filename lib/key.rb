class Key
  attr_reader :key, :a_key, :b_key, :c_key, :d_key
  def initialize
    @key = key
    @a_key = a_key
    @b_key = b_key
    @c_key = c_key
    @d_key = d_key
  end

  def generate
    @key = '0' + rand(9999).to_s
  end
  
end
