#What does puts do?

'Puts' is a Ruby command to print output to the terminal window, or console. Unlike 'p', it does not return a value, which could then be used by additional lines of code. 'Puts' is a way to see what's happening inside the code block.

#What is an integer? What is a float?

Integers are numbers. To computers, integers don't have decimal points, and may be rounded up or down to make sure that never happens. Floats are numbers with decimal points. They are more accurate for certain uses, and take up more memory.

#What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

Think back to learning math in school. Addition? Easy. Subtraction? Pretty easy. Multiplication? Harder, but fun to do when it clicks. Division? Not too hard when you consider it's the opposite of multiplication. 4 * 3 is 12, so 12 / 3 is 4. Easy. Whenever you have a nice clean number at the end of a division problem, that's an integer. When you graduate to harder math, then you have to grapple with remainders. Ugh, remainders! So our nice clean quotients are gone, replaced by complicated numbers with fractions or decimals. Computers aren't into fractions, they prefer decimals. We call those floats in computer land. So 12 / 5 is 2.4. Not too bad. 12 / 5.1234 is 2.34219... blah blah. It's a longer complicated number, the kind that computers were invented to handle. Our human mind has compensated to deal with these numbers by "rounding" up or down. Let's just say 12 / 5 is like 2. Of course, computers listen acutely to our instructions, so we can tell them to take that floating number and make it an integer. Being good little rule-followers, computers will also keep those decimals even when the number to the right of the point is 0. I say 12.0 / 3.0, and the computer says 4.0. Good boy.

```ruby
=begin
Calculate minutes in a decade
60 minutes in an hour // 24 hours in a day // 365.25 days in a year // 10 years in a decade
=end

minutes_in_a_decade = 60 * 24 * 365.25 * 10

puts minutes_in_a_decade
```

#Individual Lessons

defining variables
https://github.com/hazelmaeby/phase-0/blob/master/week-4/defining-variables.rb

simple string
https://github.com/hazelmaeby/phase-0/blob/master/week-4/simple_string.rb

basic math
https://github.com/hazelmaeby/phase-0/blob/master/week-4/basic-math.rb


#How does Ruby handle addition, subtraction, multiplication, and division of numbers?

Ruby handles math operations much like a calculator. The challenge is getting the result to do what you want. Most likely you set a variable to store the value of the operation, so the syntax is reversed to traditional math from grade school. `variable = 4 + 5` rather than `4 + 5 = x`.

#What is the difference between integers and floats?

Floats have numbers to the right of the decimal. Integers are whole numbers. We can switch between the two, if we ask Ruby to do so. 14 can become 14.0, and vice versa. Otherwise, it will stick with whatever format we use first.

#What is the difference between integer and float division?

As mentioned above, ruby will give you a whole number when dividing two integers, whether or not the actual quotient is a whole number. It effectively rounds the number. And it will give you a float when dividing two floats. The default behavior is to provide a result that matches the inputs, float result for floats, and integer result for integers.

#What are strings? Why and when would you use them?

Strings are lines of text. Maybe a name, an address, or a message to a user. We use them to store information, like the personal data of a web site user.

#What are local variables? Why and when would you use them?

Local variables are placeholders for some form of data, a string or number, etc. Most data in programming languages are stored in variables. I can store my age (39) in a variable `age`. And tell the computer to figure out when I was born, with a mathematical operation. Or I can store my name (Brian) in a variable `first_name` and construct a message `"Hello " + first_name` which will display as "Hello Brian".

#How was this challenge? Did you get a good review of some of the basics?

It was easy to write the ruby code. Using variables in this way is a bit of review for me. But it was tricky at first to understand the rspec component and use it properly.