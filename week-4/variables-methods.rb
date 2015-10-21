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
  puts "Maybe another time."
end

#
=begin

How do you define a local variable?

We create a local variable by typing the name of the new variable, then =, then whatever the value should be. Variable names should begin with a lowercase letter.

How do you define a method?

A method contains the following:
-'def' to indicate the following code is the method
-name of the method
-() containing the arguments that will be passed into the method
-body of the method, whatever actions we are taking
-'end' marks the end of the method

What is the difference between a local variable and a method?

A variable stores a value. A method can take action on that variable or others. A variable can take no action itself.

How do you run a ruby program from the command line?

Type "ruby" and the name of the ruby file.

How do you run an RSpec file from the command line?

Type "rspec" and the name of the rspec file. We can add a flag -fd to print the result of the individual tests.

What was confusing about this material? What made sense?

The style for variables and methods makes sense to me. It looks similar to Javascript, with which I have more experience. I don't understand methods as well, however. I did some fooling, and it seems that a method cannot use a variable unless it's passed in as an argument. In JS, a function can identify and utilize public variables with no problem. It seems the syntax is much more precise and unforgiving in Ruby to set up the methods properly.

end=