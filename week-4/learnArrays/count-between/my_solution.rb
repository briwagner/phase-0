# Count Between

# I worked on this challenge [by myself].

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

def count_between(list_of_integers, lower_bound, upper_bound)
  my_sum = 0
  list_of_integers.each do |int_to_add|
    if int_to_add < lower_bound || int_to_add > upper_bound
      next
    else
      my_sum = my_sum + 1
    end
  end
  p my_sum
  return  my_sum
end

count_between([4, 5, 3, 100, 200], 4, 101)