# Factorial

# I worked on this challenge [w/ Scott Chou].

#Accept a positive int
#Multiply int by int - 1
#Continue until 1 // do NOT get to 0
#Store sum in variable; print variable

# Your Solution Below
def factorial(number)
 counter = number
 sum = 1
 while (counter > 0)
  sum = sum * counter
  counter = counter - 1
 end
 p sum
end

=begin

REFACTOR

.reduce method works, as I've discovered

(1..7).reduce(1, :*)

=end