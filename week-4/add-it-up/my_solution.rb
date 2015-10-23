# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [w/ Scott Chou ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: an array of integers
# Output: sum of the elements in the int
# Steps to solve the problem.

#Take first element and assign to new variable, sum
#Create a new variable to serve as counter
#Add sum to next item in array; increment counter variable by 1
#Continue until reach the end of array

# 1. total initial solution

def total(array)
 sum = array[0]
 x = 1
 until (x == array.length)
  sum = sum + array[x]
  x = x + 1
 end
 p sum
end

# 3. total refactored solution

def total(array)
  array.inject{ |sum,x| sum + x }
end

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: array of string elements
# Output: string, composed of all elements of the array
# Steps to solve the problem.
# Take string in first position of array, set it to new variable
# Create new variable to serve as counter
# Add new variable to string in next position; increment counter
# Continue to end of array

# 5. sentence_maker initial solution

def sentence_maker(array)
  our_result = array[0].to_s
  x = 1
  until (x == array.length)
    our_result = our_result + " " + array[x].to_s
    x = x + 1
  end
  our_result.capitalize!
  our_result = our_result + "."
  p our_result
end

# 6. sentence_maker refactored solution

def new_sentence_maker(array)
  new_string = array.join(" ").capitalize!
  new_string = new_string + "."
  p new_string
end

new_sentence_maker(["strings", "are", 89, "good", "things", "to", "have"])
