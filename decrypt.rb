#runner
require './lib/enigma'
require 'date'

enigma = Enigma.new

handle = File.open(ARGV[0], "r")
message = handle.read
handle.close

decrypted_message = enigma.decrypt(message, ARGV[2], ARGV[3])

writer = File.open(ARGV[1], "w")

writer.write(decrypted_message[:decryption])
writer.close

puts "Created #{ARGV[1]} with the key #{decrypted_message[:key]} and date #{decrypted_message[:date]}."
