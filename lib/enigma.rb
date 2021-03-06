require_relative 'key'
require_relative 'offset'
require_relative 'shift'
class Enigma
  attr_reader :message, :key, :date, :alphabet, :shift, :encrypted_message
  def initialize(message, key = Key.new, date = Offset.new)
    @message = message
    @key = key.generate

    @date = date.generate
    @alphabet = []
    @shift = shift
    @encrypted_message = []
  end

  def create_alphabet
    @alphabet << (("a".."z").to_a << " ")
    @alphabet.flatten!
  end

  def find_index_in_alphabet(letter)
    @alphabet.index(letter.downcase)
  end

  def find_alphabet_letter(index)
    if index >= 27 || index < 0
      @alphabet[index%27]
    else
      @alphabet[index]
    end
  end

  def generate_shift
    @shift = Shift.new.generate(@key, @date)
  end

  def encrypt
    create_alphabet
    generate_shift
    split_message = @message.split("")
    split_message.each_with_index do |letter, index|
      if @alphabet.include?(letter.downcase) != true
        @encrypted_message << letter
      elsif (index % 4 == 0)
        alphabet_index = find_index_in_alphabet(letter)
        new_index = (@shift[:A] + alphabet_index)
        @encrypted_message << find_alphabet_letter(new_index)
      elsif (index % 4 == 1)
        alphabet_index = find_index_in_alphabet(letter)
        new_index = (@shift[:B] + alphabet_index)
        @encrypted_message << find_alphabet_letter(new_index)
      elsif (index % 4 == 2)
        alphabet_index = find_index_in_alphabet(letter)
        new_index = (@shift[:C] + alphabet_index)
        @encrypted_message << find_alphabet_letter(new_index)
      elsif (index % 4 == 3)
        alphabet_index = find_index_in_alphabet(letter)
        new_index = (@shift[:D] + alphabet_index)
        @encrypted_message << find_alphabet_letter(new_index)
      end
    end
    whole_shebang = Hash.new

    whole_shebang[:message] = @encrypted_message.join
    whole_shebang[:key] = @key[:key]
    whole_shebang[:date] = @date[:date]
    whole_shebang
  end

  def decrypt
    generate_shift
    decrypted_message = []
    @encrypted_message.each_with_index do |letter, index|
      if @alphabet.include?(letter.downcase) != true
        decrypted_message << letter
      elsif (index % 4 == 0)
        alphabet_index = find_index_in_alphabet(letter)
        new_index = (alphabet_index - @shift[:A])
        decrypted_message << find_alphabet_letter(new_index)
      elsif (index % 4 == 1)
        alphabet_index = find_index_in_alphabet(letter)
        new_index = (alphabet_index - @shift[:B])
        decrypted_message << find_alphabet_letter(new_index)
      elsif (index % 4 == 2)
        alphabet_index = find_index_in_alphabet(letter)
        new_index = (alphabet_index - @shift[:C])
        decrypted_message << find_alphabet_letter(new_index)
      elsif (index % 4 == 3)
        alphabet_index = find_index_in_alphabet(letter)
        new_index = (alphabet_index - @shift[:D])
        decrypted_message << find_alphabet_letter(new_index)
      end
    end
    whole_shebang = Hash.new

    whole_shebang[:message] = decrypted_message.join
    whole_shebang[:key] = @key
    whole_shebang[:date] = @date

    whole_shebang
  end
end
