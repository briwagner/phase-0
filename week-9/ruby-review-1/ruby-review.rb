# U2.W6: Testing Assert Statements

# I worked on this challenge with Tim.


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

 name = "bettysue"
 #assert { name == "bettysue" }
 #assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
=begin Pseudocode
define method assert
  unless the the block returns true, raise an error
set name variable to "bettysue"
call assert method to see if name is "bettysue"
call assert method to see if name it "billybob" (this will raise an error)
=end

# 3. Copy your selected challenge here

def super_fizzbuzz(array)
  array.map {|n| n % 3 == 0 ? (n % 5 == 0 ? "FizzBuzz" : "Fizz") : (n % 5 == 0 ? "Buzz" : n)}
end


# 4. Convert your driver test code from that challenge into Assert Statements

assert {super_fizzbuzz([2,3,4,5,42,87,15]) == [2,"Fizz",4,"Buzz","Fizz","Fizz","FizzBuzz"]}

# 5. Reflection