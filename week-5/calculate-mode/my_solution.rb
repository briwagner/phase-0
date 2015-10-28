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




# 4. Reflection