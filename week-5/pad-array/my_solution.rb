# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode
=begin
# What is the input?
an array, an integer (-->minimum size of the new array),
OPTIONAL argument for new content

# What is the output? (i.e. What should the code return?)
new array of the new size OPTIONAL w/ the specified content

# What are the steps needed to solve the problem?
-test size of the array --
IF size is min array then RETURN
ELSE
  OPTIONAL FOR PAD --> create a new variable to store the new array
  IF an element is specified, then padded element = that element
  -push items to array until it meets the min. size
  ELSE push nil to array
  END IF
END IF


=end

# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  if array.length >= min_size
    return array
  else
    loop do array.push(value)
    break if array.length >= min_size
    end
  p array
  return array
  end
end

# pad!([1,2,3], 5)

def pad(array, min_size, value = nil) #non-destructive
  new_array = []
  array.each { |x| new_array.push(x)}
  if new_array.length >= min_size
    return new_array
  else
    loop do new_array.push(value)
    break if new_array.length >= min_size
    end
  return new_array
  end
end

pad([1,2,3], 5)

# 3. Refactored Solution



# 4. Reflection