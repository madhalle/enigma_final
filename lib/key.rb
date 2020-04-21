class Key
  attr_reader :key, :keys
  def initialize
    @key = key
    @keys = Hash.new
  end

  def random_number_generator
    @key = ('0' + rand(1..9999).to_s)
    if @key.length != 5
      random_number_generator
    end 
  end

  def generate
    random_number_generator

    @keys[:A] = @key[0..1].to_i
    @keys[:B] = @key[1..2].to_i
    @keys[:C] = @key[2..3].to_i
    @keys[:D] = @key[3..4].to_i
    key_info = Hash.new
    key_info[:keys] = @keys
    key_info[:key] = @key
    key_info
  end
end
