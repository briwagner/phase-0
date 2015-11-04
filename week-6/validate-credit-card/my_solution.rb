# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard

  def initialize(number)
    if number.to_s.length != 16
      raise ArgumentError.new ("Must be 16 digits")
    else
      @number = number
    end
  end

  def check_card
    new_array = @number.to_s.split("")
    new_array.each_with_index do |item, index|
      if index % 2 == 0
         new_array[index] = item.to_i * 2
      else
        new_array[index] = item.to_i
      end
    end
    new_array.each_with_index do |item, index|
      if item >= 10
        new_array[index] = item - 10
        new_array.push(1)
      end
    end
    if new_array.reduce(:+) % 10 == 0
      return true
    else
      return false
    end
  end

end

card = CreditCard.new(1266123412341234)

p card.check_card


# Refactored Solution








# Reflection
