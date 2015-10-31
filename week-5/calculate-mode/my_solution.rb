# Calculate the mode Pairing Challenge

# I worked on this challenge [with: Becky ]

# I spent [1.5] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.

# 0. Pseudocode

# What is the input?
# An array of integers or strings
# What is the output? (i.e. What should the code return?)
# An array of the most frequent value(s)
# What are the steps needed to solve the problem?
# Create an empty container
# Get the count of the items in the array
# Push the key value pairs into the container
# Scan container for mode value
# Put key value into array

# 1. Initial Solution

def mode(array)
  hash = Hash.new
  array.each do |x|
    quantity = array.count(x)
    hash[x] = quantity
  end
  mode_value = hash.values.max
  new_array= []
  hash.select do |key, value|
    if value == mode_value
      new_array.push(key)
    end
  end
  return new_array
end


# 3. Refactored Solution

def new_mode(array)
  hash = Hash.new
  array.each {|x| hash[x] = array.count(x)}
  return hash.key(hash.values.max)
end

p new_mode([1,1,3,3,4,5,5,5,3,3])

# 4. Reflection
=begin
#Which data structure did you and your pair decide to implement and why?

We used a hash because it seemed to be the only way to link the integers with the count of the
 integers.

#Were you more successful breaking this problem down into implementable pseudocode than
the last with a pair?

I think we had the steps right. But we innocently put one step into pseudocode that we
couldn't do in one step of real code. So we wrote a bunch of lines to get around that -->
scanning the values for the highest count. Coming back after a couple days break, I can
see how we made the process rather convoluted.

#What issues/successes did you run into when translating your pseudocode to code?

As stated above, we thought searching the values for one specific value would be easier
than we anticipated.

#What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

We used /select/ because it seemed a good way to filter. We struggled with the right format
at first, but figured it out. I was super happy when we got it working. After thinking about it, it doesn't seem to have been the most efficient way to get where we wanted.

=end
