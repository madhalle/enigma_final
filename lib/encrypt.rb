require_relative "enigma"
handle = File.open(ARGV[0], "r")

incoming_text = handle.read
incoming_text = incoming_text.gsub("\n", "")
handle.close

enigma = Enigma.new(incoming_text)
encrypted_text = enigma.encrypt

writer = File.open(ARGV[1], "w")


writer.write(encrypted_text[:message])

writer.close

puts "Created #{ARGV[1]} with the key #{encrypted_text[:key]} and date #{encrypted_text[:date]}"
# encrypted.tct = message.txt.encrypt
# puts encrypted.tbt


#ruby encrypt.rb message.txt encrypted.txt
