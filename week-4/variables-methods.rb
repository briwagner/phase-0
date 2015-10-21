puts "Want to play a game?"
reply1 = gets.chomp.downcase

if reply1 == "yes"
  puts "Hello, what's your name?"
  first_name = gets.chomp
  puts "Do you have a last name, " + first_name + "?"
  last_name = gets.chomp
  puts "Do you prefer " + first_name + ", or Mr. " + last_name + "?"
  used_name = gets.chomp
  puts "Ok, then. " + used_name + " it is."
elsif reply1 == "no"
  puts "Maybe another time"
end
