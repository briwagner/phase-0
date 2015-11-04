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
