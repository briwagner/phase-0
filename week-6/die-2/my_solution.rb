# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: array of strings
# Output: return random string from array
# Steps:
# define initialize method to accept array as labels
# shuffle array
# return element from first position


# Initial Solution

class Die
  def initialize(labels)
    if labels.length < 1
      raise(ArgumentError, "Error: die must have at least one side")
    else
       @labels = labels
       puts "My sides are: #{@labels}"
     end
  end

  def sides
    return @labels.length
  end

  def roll
    return @labels.shuffle[0]
  end
end

my_die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
p my_die.sides

# Refactored Solution


class Die

  def roll_slot
    return @labels[rand(0...@labels.length)]
  end

end




# Reflection
=begin
In the first one, I used rand to generate a random number between 1 and the
#of sides. We can't do that here because we have strings as the individual sides.
So instead, I used the array from the argument and threw a shuffle method on that.
Then we pull the first slot from the shuffled array. I initially used shuffle! but
then realized I could just return array.shuffle[0], and do it all in one line. I
  guess the logic is quite different, comparing shuffle to random(1..x). But the
  result is very similar.

Obviously we can't treat an array of letters the same as a range of numbers. So
 that's an issue we need to deal with. When I refactored, I realized there's a way
 to use the random # generator to pull a random slot from the array. But to make this
 more universal, I'd have to consider a way to handle a range as input. We could push
 the range into an array, and then keep the other methods from this strategy.
 Pulling the random slots from the array.

I realized I needed to use an exclusive range. That's new to me.

I think I see how we handle local variables in the class definition. The @ sign is
 weird, but I'm seeing it's usage now. I experimented last week with creating a
method that would reassign the sides. So I had to fool with when to use sides and
 @sides. I also toyed with re-opening the Class def here. I can't imagine using that in practice, but I see how it works.


=end