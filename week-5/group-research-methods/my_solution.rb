# Research Methods

# I spent [1] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  int_array = []
  string_array = []
  source.each do |x|
    if x.is_a?(Integer)
      int_array << x
    else
      string_array << x
    end
  end
  sorted_arrays = [int_array] + [string_array]
  return sorted_arrays
end

def my_hash_splitting_method(source, age)
  young_pets = []
  all_pets = []
  source.select {|k,v| young_pets << [k, v] if v <= age }
  source.select {|k,v| all_pets << [k,v] if v > age}
  sorted_dogs= [young_pets] + [all_pets]
  return sorted_dogs
end

my_hash_splitting_method(my_family_pets_ages, 4)


# Identify and describe the Ruby method(s) you implemented.
=begin

For the array method, the most important method is /each/. This allows us to
iterate through the array and perform an action. In this case, we want to
check if the element is a string or fixnum, and then push each into one
array or another.

For the hash method, the key method is /select/. This is a way to similarly
separate the data based on a basic test. Whereas with arrays we have one piece
of data per element, in a hash we have two pieces: a key-value pair. So we
can decide whether we sort by keys, or values, or both. Then we can
perform an action on one or both. If we had more code in our block we could
eliminate the curly brackets and put each operation on a new line, followed by /end/.

=end

# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
=begin

What was your experience like researching for Ruby methods. Did you find them quickly? How easy was it to implement once you found one?

Did you find any methods you thought would work but didn't? What made you think they would work? How did you determine they didn't?

How does the method you chose iterate through and modify information in a data structure?

Is the method you implemented destructive or non-destructive?

What did you learn from reading your accountability-group member's explanations on their solutions?

What did you learn about researching and explaining your research to others?


=end