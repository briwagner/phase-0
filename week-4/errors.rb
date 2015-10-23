# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [1 ] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# 170
# 3. What is the type of error message?
# syntax error, unexpected end of input
# 4. What additional information does the interpreter provide about this type of error?
# expecting keyword end
# 5. Where is the error in the code?
# didn't close the method definition
# 6. Why did the interpreter give you this error?
# it kept searching for the end of the method and never found it.

# --- error -------------------------------------------------------

south_park = ''

# 1. What is the line number where the error occurs?
# 36
# 2. What is the type of error message?
# undefined local variable or method
# 3. What additional information does the interpreter provide about this type of error?
# gives name of offending element "south_park"
# 4. Where is the error in the code?
# no definition for a variable
# 5. Why did the interpreter give you this error?
# it can't store a blank variable/method. Empty variables, or empty methods are ok, but must declare it one way or other.

# --- error -------------------------------------------------------

def cartman() end

# 1. What is the line number where the error occurs?
# 51
# 2. What is the type of error message?
# undefined method / NoMethodError
# 3. What additional information does the interpreter provide about this type of error? name of offending element
#
# 4. Where is the error in the code?
# method isn't defined anywhere. so you can't call it.
# 5. Why did the interpreter give you this error?
# method wasn't defined.

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

# cartmans_phrase()

# 1. What is the line number where the error occurs?
# 66
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments. name of offending method.
# 4. Where is the error in the code?
# in method definition, no arguments were defined
# 5. Why did the interpreter give you this error?
# must add arguments to method definition, or remove it from method call

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end
offensive_message = "Love is all we need"
# cartman_says(offensive_message)

# 1. What is the line number where the error occurs?
# 85
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments; name of offending method
# 4. Where is the error in the code?
# method call; should include an argument
# 5. Why did the interpreter give you this error?
# no argument in method call



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'or Idaho')

# 1. What is the line number where the error occurs?
# 106
# 2. What is the type of error message?
#ArgumentError 1 for 2
# 3. What additional information does the interpreter provide about this type of error?
# wrong number; method name
# 4. Where is the error in the code?
# method call; should include two arguments.
# 5. Why did the interpreter give you this error?
# can't call method w/o right number of arguments.

# --- error -------------------------------------------------------

"Respect my authoritay!" *   5

# 1. What is the line number where the error occurs?
# 125
# 2. What is the type of error message?
#TypeError
# 3. What additional information does the interpreter provide about this type of error?
# String can't be coerced into Fixnum. Love the use of coerce.
# 4. Where is the error in the code?
# mixing integer and string in a math operation w/o converting one or the other
# 5. Why did the interpreter give you this error?
# ruby won't perform multiplication operations w/ integer followed by string. String, then integer, yes.

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/0.000001


# 1. What is the line number where the error occurs?
# 140
# 2. What is the type of error message?
# ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# '/' divided by 0
# 4. Where is the error in the code?
# bad math operation. Can't ever divide by zero.
# 5. Why did the interpreter give you this error?
# Because it can't perform impossible math operations.

# --- error -------------------------------------------------------

require_relative "cartmans_essay.rb"

# 1. What is the line number where the error occurs?
# 156
# 2. What is the type of error message?
# LoadError
# 3. What additional information does the interpreter provide about this type of error?
# 'cannot load such file'
# 4. Where is the error in the code?
# file name is bad
# 5. Why did the interpreter give you this error?
# Ruby can't load the file, because I didn't create one in the directory; and when I did, it doesn't simply read md files. Change it to an .rb file of that name, and bingo.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

# I find all the error messages in Ruby difficult to read. The first one was probably the hardest because the line number was not helpful. As this is an ordered assignment, we knew the first error was probably the culprit, so it was much easier. Otherwise, searching for the start of a problem that was caused by a bad end of input would have been stinky.

#I started at the beginning because that's logical. Once I saw the error in the code (missing 'end'), I crossed my fingers.

#I looked at the code primarily to figure it out. These are relatively simple problems, and the readings we did this week were very helpful to the specific problems faced here.

# Error codes are helpful to zero in on the problem area. When I'm really having trouble, I prefer to just pull a block out and into a new file, and try to sort it that way. Sometimes that's too complicated. So I go line by line to make sure each line is working until the whole block/section is sorted.