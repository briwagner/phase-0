# I worked on this challenge [with Amaar ].


# Your Solution Below

def valid_triangle?(a, b, c)
  if a + b > c && a + c > b && b + c > a
    puts true
    return true
  else puts false
  end
end