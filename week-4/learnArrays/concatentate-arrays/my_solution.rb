# Concatenate Two Arrays

# I worked on this challenge [by myself].


# Your Solution Below

def array_concat(array_1, array_2)
  array_2.each { |element| array_1.push(element) }
  return array_1
end

first_array = [4, 5, 3, 1, "a string"]
second_array = ['strings are good', 'so are ice cream sundaes', 7]

array_concat(first_array, second_array)