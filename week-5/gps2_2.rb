def new_list(hash_name)
  hash_name = Hash.new
end

# ternary
def add_item(hash_name, item_name, item_quantity)
  hash_name.has_key?(item_name) ?  hash_name += item_quantity : hash_name[item_name] = item_quantity
end

def add_item(hash_name, item_name, item_quantity)
 if hash_name.has_key?(item_name)
  hash_name[item_name] = hash_name[item_name] + item_quantity
  else
  hash_name[item_name] = item_quantity
 end
end

def remove_item(hash_name, item_name)
 hash_name.delete(item_name)
end

def update_list(hash_name, item_name, item_quantity)
 hash_name[item_name] = item_quantity if hash_name.has_key?(item_name)
end

def print_list(hash_name)
  puts 'This is your list:'
  hash_name.each do |item_name, item_quantity|
  puts item_name + ": " + item_quantity.to_s
 end
end

# our_list = Hash.new
# puts our_list

our_hash = new_list(our_hash)
puts our_hash
add_item(our_hash, "Lemonade", 2)
puts our_hash
add_item(our_hash, "Tomatoes", 3)
puts our_hash
add_item(our_hash, "Onion", 1)
puts our_hash
add_item(our_hash, "Ice cream", 4)
puts our_hash
remove_item(our_hash, "Lemonade")
puts our_hash
update_list(our_hash, "Ice cream", 1)
puts our_hash
print_list(our_hash)

=begin
What did you learn about pseudocode?

I didn't learn anything new about pseudocode. It makes sense to me. I especially like to map out the variable names at this stage. It's helpful to see how the rough logic will proceed step by step.

What does a method return?

A method returns what we tell it to, in some cases. Otherwise the last value that Ruby processed. In our case with these simple methods, it often returned the hash we were working on.

What things can you pass into methods as arguments?

We can pass any variable we want into a method, by including it in the parameters when the method is defined. At the same time, I've learned the hard way that a method won't go outside of itself to find variables that are declared, but not passed in as arguments. But generally, we can pass in strings, numbers, arrays, etc.

How can you pass information between methods?

We use variables to store info that will continue down the processing chain. So a variable that is modified in one method can be taken by another method for further action. Obviously the chain of coded events will determine what value the variable has at any given moment.

What concepts were solidified, ... still confusing?

I'm getting more comfortable with methods. Coming from javascript, I find the method definitions very particular and verbose, especially with parameters. Why do I have to pass in so many parameters, especially if they're declared already? But I can assume there is value in controlling namespace issues.

=end
