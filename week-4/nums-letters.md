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