require "./lib/decrypt"

decrypt = Decrypt.new()
decrypted_text = decrypt.decrypt_file([ARGV[0], ARGV[2], ARGV[3]])
decrypt.write_file(ARGV[1], decrypted_text)

puts "Created #{ARGV[1]} with the key #{ARGV[2]} and date #{ARGV[3]}"
