# Your Names
# 1) Brian W
# 2) Natasha

# We spent [1.25] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, order_quantity)
  # hash of 3 items with serving size values
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}


  # test if item_to_make is in the library
  # generate error message if test fails
  if !library.include?(item_to_make)
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  # pull value that corresponds to the key (serving size)
  serving_size = library[item_to_make]
  # figure out leftover ingredients
  leftover = order_quantity % serving_size
  min_order_size = order_quantity/serving_size
  # generate message whether you have leftover ingredients

  if leftover == 0
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make " + min_order_size.to_s + " of #{item_to_make}, you have leftover ingredients to make #{leftover} cookies."
  end
end

#p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
#p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
#p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
