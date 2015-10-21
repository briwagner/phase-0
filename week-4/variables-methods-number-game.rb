puts "My favorite number is 2. What's yours?"
fave_number = gets.chomp.to_i

if fave_number == 0
  puts "That's nothing. Like not a thing. Just zero."
elsif fave_number < 0
  puts "Why so negative?"
elsif fave_number == 2
  puts "Seems like we're friendsies."
else
  new_number = fave_number + 1
  puts "That's a nice number. What about " + new_number.to_s + "? It's that much bigger."
end

