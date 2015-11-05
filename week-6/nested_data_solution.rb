# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES
               # 0   1        2           3
number_array = [5, [10, 15], [20,25,30], 35]

# def add_five(array)
#   flat_array = array.flatten.map {|x| x + 5 }
# end

def add_five(array)
  flat_array = array.map do |x|
    if x.is_a? Array
      x.map {|y| y + 5 }
    else
     x + 5
    end
  end
end



p add_five(number_array)

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]


=begin

Nested arrays behave like normal arrays, the big difference is the data is stacked,
or so I like to think of it. It can be easier to add line returns when coding to help
see the nested levels of an array, much like it's easier to have each element in a
hash occupy its own line. Also don't be afraid to keep adding slot selectors to find
the element you want. array[1][2][0][4] --> because Ruby can make sense of it all.

/each/ is the simplest way to iterate over an array. That will step through each
element, and from there we can step into nested arrays by calling /each/ on that
element as well. My favorite method for nested arrays is /rassoc/ which will search
through nested arrays for a specified element. We didn't use that here because
we weren't searching, but so much fun! Another good one is /flatten/ which destroys
the nested array structure, turning it into one big array, but it can be useful.

One new trick for me was to run /each/ on the original array, and then test the
returned object for whether it is a nested array. Obviously we cannot run all the same
methods on an Array as we could a String or Integer, so we need to know! In this case,
we wanted to add 5 to the element, assuming it's an Int. So we tested the object for
whether it's an array and then ran /map/ with + 5, if it passed; and just the addition
if it failed.

=end