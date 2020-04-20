class Key
  attr_reader :key, :keys
  def initialize
    @key = key
    @keys = Hash.new
  end

  def random_number_generator
    @key = '0' + rand(9999).to_s
  end

  def generate
    random_number_generator

    @keys[:A] = @key[0..1].to_i
    @keys[:B] = @key[1..2].to_i
    @keys[:C] = @key[2..3].to_i
    @keys[:D] = @key[3..4].to_i
  end
end
