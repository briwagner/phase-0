def factorial(number)
 #number - (number-1) - number-2, etc., until number = 0
 counter = number
 sum = 1
 while (counter > 0)
  sum = sum * counter
  counter = counter - 1
 end
 p sum
end


array.inject {}

def total(array)
 sum = array[0]
 x = 1
 until (x == array.length)
  sum = sum + array[x]
  x = x + 1
 end
 p sum
end


# 3. total refactored solution

def total(array)
array.inject{|sum,x| sum + x }
end



def sentence_maker(array)
array.join(" ")
end

# 6. sentence_maker refactored solution
def sentence_maker(array)
variable = array.join(" ")
variable.capitalize!
variable = variable + "."
p variable
end