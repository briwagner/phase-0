# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [1.5] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # create letter_array w/ 5 slots, one for each of BINGO letters as strings
  # new_letter_pos = generate random # range 1..5
  # new_letter = letter_array[random_number]
  # new_number = generate random # range 1..100

# Check the called column for the number called.
  # iterate on array -> test if new_number == sub_array[new_letter_pos]

# If the number is in the column, replace with an 'x'
  # IF above test passes, then sub_array[new_letter_pos] = "X"

# Display a column to the console
  # iterate on array to print subarrays[new_letter_pos]

# Display the board to the console (prettily)
  # iterate on board array --> p each sub_array

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
    @letter_array = ["B", "I", "N", "G", "O"]
    @match = false
  end

  def show_board
    @bingo_board.each { |x| p x }
  end

  def show_column(col)
    @bingo_board.each {|x| p x[col]}
  end

  def next_number
    @match = false
    new_letter_pos = rand(0..4)
    new_letter = @letter_array[new_letter_pos]
    new_number = rand(1..100)
    p "The next letter is " + new_letter + " " + new_number.to_s
    sleep 0.4
    show_column(new_letter_pos)
    sleep 1.2
    # find_number(83, 4)
    find_number(new_number, new_letter_pos)
    show_board
  end

  def find_number(number, column)
   @bingo_board.each do |sub|
     if number == sub[column]
      @match = true
      sub[column] = "X"
     end
    end
    @match ? puts("Found it") : puts("Can't find it")
  end

end

# Refactored Solution

class Bingo

  def initialize
    @bingo_board = new_board
    @match = false
  end

  def new_board
    board = []
    5.times do
      board << [rand(1..15), rand(16..30), rand(31..45), rand(46..60), rand(61..75)]
    end
    board[2][2] = 'X'
    return board
  end

  def show_board
    @bingo_board.each { |x| p x }
  end

  def show_column(col)
    @bingo_board.each {|x| p x[col]}
  end

end

# REFACTORED DRIVER CODE

# game = Bingo.new

# game.show_board

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
=begin
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

new_game.next_number

# new_game.find_number(47, 4)

=end

#Reflection

=begin

As always, I find the pseudocode easier than the actual coding. There are always moments
in coding, when I realize I didn't anticipate the challenge here. But that's ok, because
the pseudocode helps to stay on the individual task and isolate and solve it. Then move on
to the next phase in the code. I'm sure my pseudocode is slightly language specific. :(

The benefits of Class here are having some access to a shared set of variables among a
couple different methods. I used a @match variable which was helpful. But I still don't
get how to make these variables more accessible to different methods within the Class.
I understand that in refactoring we want to isolate the methods based on function, etc.
This function prints one of several messages to user. This one, if there's a match, changes
the integer to "X", ... But getting those different methods down the chain to read one var
at the top is too hard for me to figure out now.

Accessing coordinates in a nested array is a question of stacking the positions, from outer
to inner arrays, reading left to right. array[sub_array_location][sub_sub_array_location] ...

I used each to iterate through the array. Thinking about it now, map may have been more
useful to me, coupled with find.

I don't think I used any new methods. I used rand, which I had seen before. I also used a
ternary which is maddening. Why does p "Message" not work as normal? It has to be p("Message").

I guess I created two instance variables. Obviously the letters BINGO are the same. I put
those in an array as a reference. Then I created a @match variable to help in processing
when a match was found. I guess those are true to the game, any game, all games. So it makes
sense that they operate on an instance level.

=end
