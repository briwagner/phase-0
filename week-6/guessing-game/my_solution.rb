# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# initialize: accept an integer and store it as answer
# guess: accept an integer and store it as guess
#
# Output:
# guess: IF returns another clue if guess !== answer;
# ELSE returns 'you win'
# ENDIF
# Steps:
=begin
1. initialize answer and store in variable
2. create guess method that accepts guess.
3. check if guess == answer
  IF guess == answer, return 'you win'
  ELSIF guess > answer, return :high; ask for another guess
  ELSIF guess < answer, return :low; ask for another guess
  ELSE ask for another guess ((can't parse input, i.e. string not integer))
  ENDIF
4. create solved? method -->
  return true/false if guess == answer
  end
=end


# Initial Solution
=begin
class GuessingGame
  def initialize(answer)
    @answer = answer
    @solved = false
  end

  def guess(guess)
    @guess = guess.to_i
    if @guess == @answer
      @solved = true
      solved?
      return :correct
    elsif @guess > @answer
      @solved = false
      p "That's too high"
      return :high
    elsif @guess < @answer
      @solved = false
      p "Try a higher number"
      return :low
    end
  end

  def solved?
    if @solved == true
      p "Way to go! #{@guess} was the right answer."
      return true
    else
      return false
    end
  end

  def last_guess
    p @guess
  end

end

=end
# Refactored Solution

class GuessingGame

  def initialize(answer)
    @answer = answer
    @solved = false
    @feedback = {
      :high =>"That's too high",
      :low =>"Try a bigger number",
      :correct =>"Way to go! #{@answer} is the right answer."
    }
  end

  def guess(guess)
    @guess = guess.to_i
    if @guess == @answer
      @solved = true
      solved?
      return :correct
    elsif @guess > @answer
      @solved = false
      p @feedback[:high]
      return :high
    elsif @guess < @answer
      @solved = false
      p @feedback[:low]
      return :low
    end
  end

  def solved?
    if @solved == true
      p @feedback[:correct]
      return true
    else
      return false
    end
  end

  def last_guess
    p @guess
  end

end

# Reflection
=begin

When we set up our Class we want to know that each instance will have access to certain
things. Ruby keeps a pretty tight lid on scoping elements, compared to other languages (JS
for me), so we have to be careful with class variables and instance variables. In this
case, we wanted to create a 'game' instance of the Class. Each game needs to have its own
@answer and @guess variable, as part of the instance. Each game also needs to run its own
solved? method, comparing @guess and @answer, which are unique to that 'game' instance.
In this sense, we can have multiple game instances out in the ether, and the specific
variables are tied to each game, and don't overlap.

Instance variables are good for creating a number of objects within a certain class. Each
instance will have its own unique characteristics (variable values) but the structure of
all of them will be the same. Each instance within a Dog class will have some # of @legs,
and some color of @hair and some type of @bark. I know that I can access all of those
values, even if I don't what the values will be.

I had trouble refactoring. I wanted to pull out the method where I print certain messages
based on the guess. I wanted a method that would read one of the values in a Class level
hash. But I couldn't get it working. Ultimately, the feedback hash is an instance variable,
but I don't like that it's available when the game is first created. I would like to hide
it as a Class variable instead, which the game can then access. But the @ vs @@ and the
self and other scope issues tied me up.

I have no idea why we used symbols. I wonder if it makes the code run faster. Of course,
it helps eliminate the string comparison methods, which would force us to be extra careful
with syntax. Generally, symbols are unique, and allow for less memory and faster processing.

=end
