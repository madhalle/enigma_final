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

  def split
    @a_key = @key[0..1].to_i
    @b_key = @key[1..2].to_i
    @c_key = @key[2..3].to_i
    @d_key = @key[3..4].to_i
  end

end
