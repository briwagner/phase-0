#Attr Methods

# I worked on this challenge [by myself]

# I spent [#] hours on this challenge.

class NameData

  # attr_accessor :name

  def initialize(name)
    @name = name
  end

end


class Greetings

  attr_accessor :name
  attr_accessor :student

  def initialize(name="Brian")
    @name = name
    @student = NameData.new(name)
  end

  def greet
    p "Hello #{@name}! How wonderful to see you today."
  end

end



# Reflection
=begin
Release 1

Most of the methods in the Class are used to create the variables for the instance,
once created. There are three methods that allow us then to set those values from within
the object: change_my_age=, change_my_name=, and change_my_occupation=. They work by
calling the method on the instance. instance.change_my_name=(new_value). These are all
instance variables. There are no class vars here.

Release 2

Here we've pulled out the method that defines the instance variable 'age' and instead we're
using a attr_reader. Now we can access that variable /age/ but we can't change it. We would
need a attr_accessor to do both. This a bit cleaner because we haven't defined a method that
does nothing really. Instead at the top of the class we have declared that 'hey, this is a
variable we'll be using.'

Release 3

Here we've added separate attr_reader and attr_writer lines for the instance variable 'age.'
We could combine them into one: attr_accessor. But still we have eliminated the separate
method that was intended to set or re-set the 'age' value. Now it's a simpler thing to
write to change the age. No longer the long method name of => instance.change_my_age=...
It's instance.age = ...
Now I don't have to remember the longer method name. I just remember the attribute symbol and
poof, I can change it.

Release 5

A reader method allows us to access an instance variable from the object.

A writer method allows us to set the value of that variable.

The attr methods are helpful because we can declare the variables in use at the top of
the Class definition. Then it's a simple step to invoke the variable and read it or write it.
object_instance.variable_name

I'm sure there are cases where we want to keep variables private. Both for reading and writing.

It's still a bit confusing. Why do class variables exist? Why do class instance variables
exist? I understand why each object needs to have its own data. And a class is crucial to
having one set of architecture for all the instances. But Ruby has such a tight scope on
all these variables and methods, it seems redundant at times to keep passing a bunch of
variables into a method, for example, so it can access them.

Ultimately the syntax of instance.property is more familiar to me, from having experience with javascript. That's how objects can be handled in JS.

=end