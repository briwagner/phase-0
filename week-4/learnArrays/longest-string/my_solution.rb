# Longest String

# I worked on this challenge [by myself,].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
def longest_string(list_of_words)
  long_string = list_of_words[0]
  list_of_words.each { |check_string| long_string = check_string if check_string.length > long_string.length }
  puts long_string
  return long_string
end

longest_string(['short', 'stack', 'of words', 'is a short stack of words'])