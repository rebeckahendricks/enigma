#runner
require './lib/enigma'
require 'date'

enigma = Enigma.new

handle = File.open(ARGV[0], "r")
message = handle.read
handle.close

encrypted_message = enigma.encrypt(message.chomp)

writer = File.open(ARGV[1], "w")

writer.write(encrypted_message[:encryption])
writer.close

puts "Created #{ARGV[1]} with the key #{enigma.key} and date #{enigma.date}"
