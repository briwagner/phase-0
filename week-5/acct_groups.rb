=begin

PSEUDOCODE

# Define method with flexible # of parameters ==> names.
# Create array and push names into it.
# LOOP while array.length > 0
  # Create variable to hold random integer between 0 and array.length.
  # Grab element at position array[random_position] and push into new array
  LOOP until group is full ??
  # Pop out element at the above position
#END LOOP
  create counter = 0
# LOOP
  puts group_counter#
  increment counter
  break if group_counter# doesn't exist
# END LOOP

=end

def array_into_groups(array_of_names)
  grouped_list = []
  array_length = array_of_names.length - 1
  new_group = []
  5.times do
    random_position = rand(0..array_length)
    new_group.push(array_of_names[random_position])
    array_of_names.delete_at(random_position)
    array_length -= 1
  end
  grouped_list.push(new_group)
  p grouped_list
end

cheers_names = ["Sam", "Diane", "Coach", "Carla", "Cliff", "Norm", "Vera", "Frasier", "Woody", "Lilith", "Rebecca", "Loretta", "Evan Drake", "Eddie Lebec"]

array_into_groups(cheers_names)

# shuffle and shift

def assign_groups(*name, group_size)
  full_list = []
  grouped_list = []
  name.each {|name| full_list.push(name)}
  full_list.shuffle!
  loop do
    new_group = []
    group_size.times do
      new_group.push(full_list.shift)
      break if full_list.length <= 0
    end
    grouped_list.push(new_group)
    break if full_list.length <= 0
  end
  grouped_list.each {|group| p group}
end

# assign_groups("Sam", "Diane", "Coach", "Carla", "Cliff", "Norm", "Vera", "Frasier", "Woody", "Lilith", "Rebecca", "Loretta", "Evan Drake", "Eddie Lebec", 5)

