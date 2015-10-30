# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [.5] hours on this challenge.

# 0. Pseudocode

=begin
# Input:
-name for die variable
-integer for number of sides
# Output:
-initially returns the die with specified number of sides
-call the roll method and it returns a random number between 1 and number of sides specified
# Steps:
1. define class
2. define initialize method with # of sides as parameter
3. define roll method to produce random # between 1 and # of side from above
=end


# 1. Initial Solution

class Die
  def initialize(sides)
    if sides < 1
      raise(ArgumentError, "Error: die must have at least one side")
    else
      @sides = sides
      puts "I have #{@sides} sides"
    end
  end

  def sides
    return @sides
  end

  def what_roll
    return "I have #{@sides} sides"
  end

  def roll
    return rand(1..@sides)
  end
end

# 3. Refactored Solution

# I wanted to explore a way to change the sides. Not in the lesson directions!
class Die

  def change_sides(new_sides)
    @sides = new_sides
    return "Now I have #{sides} sides"
  end

end


# 4. Reflection
=begin
What is an ArgumentError and why would you use one?

ArgumentError is auto generated when a method call doesn't satisify the parameters that are required by the method defition. Here we wanted to generate an error when the value of the argument doesn't work with the method as we intended. Even though we can call the method with 1 argument and it matches the method definition, we want to make sure the values passed in to the method will work as needed.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

Raise was a new technique. But no special methods were used here.

What is a Ruby class?

Class is a way to define a special category of object. Ruby has some built-in and we can define our own. Classes have their own properties and methods. When we define a class, as we did here, we can define certain behaviors and more importantly certain methods to use with them.

Why would you use a Ruby class?

We could create a class for a type of object that we will use over and over again in an environment. We can define methods and properties for the class, which will be true for all the instances of the class that we create.

What is the difference between a local variable and an instance variable?

Instance variables are defined with a leading @, and they have a scope limited to the containing object. Local variables have names starting with a lowercase letter or _, and they are scoped to the code environment. It doesn't have to be an instance of an object.

Where can an instance variable be used?

Instance variables are scoped to an instance of the object. We can have many objects of a certain class. Each object instance can have its own instance variables. These do not belong to the parent class, though, like a class variable would (@@class_variable).

end=