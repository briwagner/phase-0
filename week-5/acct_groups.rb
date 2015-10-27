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

# array_into_groups(cheers_names)

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

assign_groups("Sam", "Diane", "Coach", "Carla", "Cliff", "Norm", "Vera", "Frasier", "Woody", "Lilith", "Rebecca", "Loretta", "Evan Drake", "Eddie Lebec", 5)

=begin

The most interesting part of this challenge was researching methods to use. I hit a wall with my strategy
to use a random number generator to pull out random slots. It kept failing. I had to find another solution.
The .shuffle method was essential to me getting this accomplished. Although, I could have just resorted to a
non-random selection of names. It's also to think about all the different ways to sort a list,
aside from being able to write the actual code.

I think I'm improving. It's not the first time that my assumptions were wrong, and I couldn't do what I thought
I could. In the end, I was happy to change directions. But having an initial plan makes it easier to pick
up again where you stopped.

Mine was a good way to generate random groups each time. Though that may not be a good idea
for practical purposes. I was happy that I included a way to decide the size of the groups in the
  argument list. Still, I wish I had time to perform a final check to make sure no groups had just one
  person in them.

I used an array of arrays. It seemed best because we were building basic lists, up to 5 people or so.
I briefly wondered how it could work with a hash. But I couldn't figure how to generate
an uncertain number of key/value pairs, based on an uncertain input. I really tried to create a series of separate arrays, but similarly I couldn't understand how to generate array names in a procedural fashion, without knowing how many were needed.

I found shuffle and reacquainted myself with x.times do. Those saved me. Otherwise I didn't see a way to the finish line.

=end