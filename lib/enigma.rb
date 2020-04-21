class Enigma
  attr_reader :message, :key, :date, :alphabet
  def initialize(message, key = Key.new.generate, date = Offset.new.generate )
    @message = message
    @key = key
    @date = date
    @alphabet = []
  end
end
