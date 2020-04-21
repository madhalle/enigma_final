require_relative "enigma"
require_relative "encrypt"
handle = File.open(ARGV[0], "r")

incoming_text = handle.read
incoming_text = incoming_text.gsub("\n", "")
handle.close

enigma = Enigma.new(incoming_text, ARGV[2], ARGV[3])
decrypted_text = enigma.decrypt
writer = File.open(ARGV[1], "w")

writer.write(decrypted_text[:message])

writer.close

#ruby decrypt.rb encrypted.txt decrypted.txt
