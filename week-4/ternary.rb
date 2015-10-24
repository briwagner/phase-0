bacon = 3

# one

if bacon < 4 then puts "bacon" else puts "eggs" end

# two

def bacon
  puts "bacon"
end

def eggs
  puts "eggs"
end

bacon < 4 ? bacon() : eggs()

# three

bacon > 2 and puts "breakfast"

# four

(puts "bacon"
puts "eggs"
puts "biscuit") if bacon < 4