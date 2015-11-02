# Research Methods

# I spent [1] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

#Pseudocode
#Create a new empty array called has_key_letter
#Test and return the strings with the key letter to the new empty array
  #Test each word for the key letter using string method
  #iterate over the array and run the method
  #Add each key letter containing string to the new array
  #end
#End
#Print has_key_letter array

# Person 1's solution --> Karla
def my_array_finding_method(element_array, letter)
  has_key_letter = Array.new
   element_array.each do |element|
    # element = element.to_s
    if element.to_s.include?(letter)
      has_key_letter.push(element)
    end
   end
   p has_key_letter
end

#Pseudocode
#Create a new empty array called pet_is_age
#Test and return the key's with a value matching the age input
  #Test each word for the age value using the == method
  #iterate over the array and run the method
  #Add each key to the new array
  #end
#End
#Print the pet_is_age array

def my_hash_finding_method(hash_collection, age)
   pet_is_age = []
   hash_collection.each do |key,value|
    if value == age
      pet_is_age.push(key)
    end
   end
   p pet_is_age
end

# my_hash_finding_method(my_family_pets_ages, 3)

=begin
# Release 1: Identify and describe the Ruby method you implemented.
# Identify and describe the Ruby method(s) you implemented.
The unique ruby methods I used for my assignments were .push, include?, and .to_s.
.push adds an element to an array.
include? will check an element for the presence of a specified character. The one
hitch with .include? is that it is a string method, meaning it will not run on
elements of any other class. That is where the .to_s method came in. Because the
array contains integers, we must turn them into strings before they can be successfully
evaluated.
=end

# Person 2: Nicola
# pseudocode
# input: name of array or hash you want to modify and number that adds to or replaces age data
# output: modified array or hash with updated integer data
# select integers in source array/hash
# either add or replace integers with input
# return same source array/hash that has been changed

def my_array_modification_method!(source, thing_to_modify)
  source.map! {|x| x.is_a?(Integer) ? x + thing_to_modify : x}
  return source
end

def my_hash_modification_method!(source, thing_to_modify)
  source.each { |pet, age| source[pet] = age + thing_to_modify }
 return source
end

# Identify and describe the Ruby method(s) you implemented.
# map! - iterates over each element in the array and modifies the array so each element is changed
#          according to the code in the block
# is_a?(Integer) - this method checks each element in the array to see if it is an integer
# I tried to use each_value for the hash modification, but couldn't figure out how to reassign
# the age value without referencing the key. Let me know if anyone used that method to alter just the values.



# Person 3 -- Josh Shin
def my_array_sorting_method(source)
  sorted_array = source.clone
  sorted_array.sort!  { |a, b| a.to_s <=> b.to_s }
  return sorted_array

end

def my_hash_sorting_method(source)
   sorted_age_hash = source.sort_by {|key, value| value }
   return sorted_age_hash
end

# Identify and describe the Ruby method(s) you implemented.
# .clone' was used to clone the original array so I wouldn't alter its data and so the new array would have a different object id.
# '.sort!'' to reorder the array
# '.to_s' to convert the integers to strings while sorting so that there wouldn't be a type error
# '.sort_by' to sort the values of a hash. '.sort_by' allowed me to pass in two variables, the key and the value, and specifiy which one I wanted to sort.


# Person 4 -- Josh Shin
def my_array_deletion_method!(source, thing_to_delete)
  source.delete_if { |i| i.to_s.include? thing_to_delete }
  return source
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.delete_if { |key, value| key.include? thing_to_delete}
  return source
end

# Identify and describe the Ruby method(s) you implemented.
# I used delete_if to iterate through the collections and see if any of the elements contained the string I was looking to delete.
#
#


# Person 5 - Brian Wagner
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

# my_hash_splitting_method(my_family_pets_ages, 4)


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

=begin
# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?

Learning from the official docs can be hard. The explanations are overly technical and sometimes inaccessible. It can be easier to learn from other normal people -- like me! Hopefully the explanations were helpful, especially being tied to a very concrete example.

What was your experience like researching for Ruby methods. Did you find them quickly? How easy was it to implement once you found one?

The methods I used were already known to me, since I wound up doing the pair challenge before this and I needed them for that.

Did you find any methods you thought would work but didn't? What made you think they would work? How did you determine they didn't?

Nope.

How does the method you chose iterate through and modify information in a data structure?

/each/ seems especially useful for arrays. But it wouldn't work for a hash, because you need to look at the key/value pairs individually or take one or the other for processing later. So, enter /select/ which provides a lot more flexibility with only a slight cost in complexity.

Is the method you implemented destructive or non-destructive?

Both are non-destructive.

What did you learn from reading your accountability-group member's explanations on their solutions?

It's valuable to read where people hit roadblocks and had to change tacks, or add another step to get to where they needed. Obviously, you learn about what situations will generate those roadblocks and see how different things can work together to overcome them.

What did you learn about researching and explaining your research to others?

It's important to have the right vocabulary and speak in the vernacular of the language. It's taken me a while to stop saying /function/ for /method/, because of previous experience with javascript.

=end