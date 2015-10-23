# Smallest Integer

# I worked on this challenge [by myself].

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def smallest_integer(list_of_nums)
  if list_of_nums.length == 1
    puts list_of_nums[0]
    return list_of_nums[0]
  else
    lowest_num = list_of_nums[0]
    list_of_nums.each { |nums| lowest_num = nums if nums < lowest_num }
    puts lowest_num
    return lowest_num
  end
end

smallest_integer([4, 3, 66])