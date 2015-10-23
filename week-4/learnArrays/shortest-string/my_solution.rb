# Shortest String

# I worked on this challenge [by myself, with: ].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
def shortest_string(list_of_words)
  short_string = list_of_words[0]
  list_of_words.each { |check_string| short_string = check_string if check_string.length < short_string.length }
  puts short_string
  return short_string
end

shortest_string(['one string or another', 'another string', 'short', 'not very short at all'])