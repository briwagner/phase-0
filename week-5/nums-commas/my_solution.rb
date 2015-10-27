=begin
Numbers to Commas Solo Challenge

I spent [1.5] hours on this challenge.

Complete each step below according to the challenge directions and
include it in this file. Also make sure everything that isn't code
is commented in the file.

0. Pseudocode

What is the input?
-->accept an integer

What is the output? (i.e. What should the code return?)
-->output an integer with pretty commmas

What are the steps needed to solve the problem?
split integer digits into an array
IF array length > 3
  create counter var = -4
  insert "," at counter position
  increment counter -3
  until counter >= array length
    END LOOP
ELSE return it
END IF

=end

# 1. Initial Solution

def separate_comma(my_integer)
  my_integer = my_integer.to_s.split(//)
  array_length = my_integer.length
  if my_integer.length > 3
    counter = -4
    loop do
      my_integer.insert(counter, ",")
      counter = counter - 4
      array_length += 1
      break if -counter >= array_length + 1
    end
  end
  return my_integer.join
end

separate_comma(100040166840000)

# 2. Refactored Solution

def pretty_numbers_re(my_integer)
  my_integer = my_integer.to_s.split(//)
  array_length = my_integer.length
  add_commas(array_length, my_integer)
end

def add_commas(integer_array_length, integer_as_array)
  if integer_array_length > 3
    counter = -4
    loop do
      integer_as_array.insert(counter, ",")
      counter -= 4
      integer_array_length += 1
      break if -counter >= integer_array_length + 1
    end
  end
  puts integer_as_array.join
end

pretty_numbers_re(3010)

# 3. Reflection

=begin

What was your process for breaking the problem down? What different approaches did you consider?

I thought of the steps required. First push int into an array. Then test it. Then add the commas.
Then put array to string. I didn't have another approach. I just fine-tuned the steps I had.

Was your pseudocode effective in helping you build a successful initial solution?

Yes, it helps to remember what step you're on, and what you need to do at that step.
I think it engenders good practice to proceed step by step, and to test at each step.
So once the code breaks, you can stop and re-assess. Then proceed on to next step.
Otherwise it's easy to forget what step you were on.

What Ruby method(s) did you use when refactoring your solution?
What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?

I found .split and .insert. I struggled with insert at first, because I had argument syntax backwards.
These were crucial to my code. I didn't find any more sophisticated methods to use.

How did you initially iterate through the data structure?

I created a counter variable and incremented it. I don't know of another way to do that with an array.
Especially when it calls for jumping three positions at a time.

Do you feel your refactored solution is more readable than your initial solution? Why?

No. I tried to pull out the method that actually inserts commas, and make it separate from the method that converts integer to array.
I know it's good practice to break methods up that way. But I find it more confusing.
I still don't understand how to pass the result from the inner method to the surrounding method
and have the surrounding method puts it.

=end