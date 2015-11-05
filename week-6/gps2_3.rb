# Your Names
# 1) Brian W
# 2) Natasha

# We spent [1.25] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, order_quantity)
  # hash of 3 items with serving size values
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}


  # test if item_to_make is in the library
  # generate error message if test fails
  if !library.include?(item_to_make)
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  # pull value that corresponds to the key (serving size)
  serving_size = library[item_to_make]
  # figure out leftover ingredients
  leftover = order_quantity % serving_size
  min_order_size = order_quantity/serving_size
  # generate message whether you have leftover ingredients

  if leftover == 0
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make " + min_order_size.to_s + " of #{item_to_make}, you have leftover ingredients to make #{leftover} cookies."
  end
end

#p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
#p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
#p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
=begin

We definitely learned what hard-to-read code looks like, and how much time
is wasted by trying to decipher it. I hope at the same time we're learning
how to write readable code. Those are probably two different challenges.
I'm a big fan of thinking hard about expressive variable names, etc. That
helps me understand, so I'm not tracking through code trying to figure out
why that is called XX and what it does.

We didn't use any novel methods here. I got a primer again in ! values.
Sometimes the easiest way to set a conditional is NOT something. And my
pair geniusly realized that we needed to turn an integer into float,
before we could perform a .ceil operation. Even though we didn't use the
line, she helped me save what would have been much more time trying to
decode that faulty syntax.

With hashes, the syntax is different than arrays. Sometimes it's a trick
to remember square brackets, not parentheses, and vice versa. Also, there's
different syntax for :symbols as opposed to key "strings".

I'm getting more comfortable with the hash syntax. Parentheses and
rockets, etc. The concept of storing data in collections and sorting it
and accessing it is pretty transparent to me now.

=end