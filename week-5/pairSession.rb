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