# Largest Integer

# I worked on this challenge [by myself].

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def largest_integer(list_of_nums)
  big_number = list_of_nums[0]
  list_of_nums.each { |nums| big_number = nums if nums > big_number }
  puts big_number
  return big_number
end

largest_integer([5, 6, 300, -2])