# Pad an Array

# I worked on this challenge [w/ Becky ]

# I spent [1] hours on this challenge.


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

# pad([1,2,3], 5)

# 3. Refactored Solution

def new_pad!(array, min_size, value = nil) #destructive
  if array.length <= min_size
    (min_size - array.length).times { array << value }
  end
  return array
end

def new_pad(array, min_size, value = nil) #non-destructive
  new_array = array.clone
  if new_array.length <= min_size
    (min_size - array.length).times { new_array << value }
  end
  return new_array
end

this_array = [1,2,3]
p new_pad(this_array, 8)

# 4. Reflection
=begin

#Were you successful in breaking the problem down into small steps?

Yes, I think we conceived of the steps. In refactoring, I think I realized that some steps can be
combined, e.g. do an action if something passes a test.

#Once you had written your pseudocode, were you able to easily translate it into code?
What difficulties and successes did you have?

I think we got our steps into code, but didn't anticipate problems passing the rspec tests.
Our biggest problem was we did not initially clone the array in pad!, so the object IDs were the same.

#Was your initial solution successful at passing the tests? If so, why do you think that is? If not,
what were the errors you encountered and what did you do to resolve them?

No. We had errors because the two arrays in pad! had matching object IDs

#When you refactored, did you find any existing methods in Ruby to clean up your code?

I didn't find new methods, but I realized that I could flip the if statement, and eliminate the
else part. Then I need only line to |return array|, not two. Also, I stumbled across another peer
using (x+y).times do in the group exercise, so I stole that great idea.

#How readable is your solution? Did you and your pair choose descriptive variable names?

The initial solution looks rather javascripty to me, and that's probably my fault. The refactored looks more
ruby, I guess.

#What is the difference between destructive and non-destructive methods in your own words?

Destructive is something I believe they call "in place" methods. You take a variable and call a method,
so you only need two elements. The element is permanently changed.
Non-destructive requires a third element usually. You need a new variable to store the changes on the
initial element, because otherwise the altered element is gone after the method call is over. Or you can send
that altered state of the element to something else as a message. But it's only a temporary change on the
initial element, or maybe a change on a fleeting copy of the initial element.

=end
