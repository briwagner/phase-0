number_of_bottles = 99
first_lyric = " bottles of beer"
second_lyric = first_lyric + " on the wall"
third_lyric = "Take one down, pass it around, "

def sing(number, first_lyric, second_lyric, third_lyric)
  while number > 0
    p number.to_s + second_lyric + ", " + number.to_s + first_lyric + ", " + third_lyric + (number - 1).to_s + second_lyric
    number -=  1
  end
end

sing(number_of_bottles, first_lyric, second_lyric, third_lyric)