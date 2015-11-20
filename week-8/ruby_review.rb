# OO Basics: Student


# I worked on this challenge [by myself].
# This challenge took me [#] hours.


# Pseudocode



# Initial Solution

class Student
  attr_accessor :scores, :first_name

  def initialize(name, scores)
    @first_name = name
    @scores = scores
  end

  def scores
    return @scores
  end

  def first_name
    return @first_name
  end

  def average
    average = self.scores.reduce(:+) / self.scores.length
    return average
  end

  def letter_grade
    letters = ["A", "B", "C", "D", "F"]
    grade = average
    if grade >= 90
      return letters[0]
    elsif grade >= 80
      return letters[1]
    elsif grade >= 70
      return letters[2]
    elsif grade >= 60
      return letters[3]
    else return letters[4]
    end
  end

end

def linear_search(array, name)
  location = -1
  array.each_with_index {|x, i| location = i if x.first_name == name }
  p location
end

=begin
USED SPLICE -
def binary_search(array, name)
  array.sort! {|x,y| x.first_name <=> y.first_name}
  loop do
    chop_array(array, name)
    break if array.length ==1
  end
  if array[0].first_name == name
    p array[0].first_name
  else
    p "sorry"
  end
end

def chop_array(array, name)
  if array[array.length/2].first_name > name
    array.slice!(array.length/2, array.length)
  else
    array.slice!(0, array.length/2)
  end
end
=end

def verify(range, target)
  if target > range[range.length-1] || target < range[0]
    p 'no match'
    return true
  end
end

def range_search(range, target)
  range = *range
  return if verify(range, target)
  start_point = 0
  end_point = range.length
  loop do
    middle = (end_point + start_point) / 2
    if target == range[middle]
      p "match found #{target} at #{range[middle]}"
      return
    elsif target > range[middle]
      start_point = middle + 1
      p "first #{start_point} , #{end_point}"
    else
      end_point = middle
      p "second #{start_point} , #{end_point}"
    end
    p "Searching for #{target} between #{start_point} and #{end_point}"
  end
end

range_search(1..50, 51)

def binary_search(array, name)
  begin_search = 0
  end_search = array.length
  if array[end_search/2].first_name > name
    begin_search = end_search/2
  else
    end_search = end_search/2
  end
  p begin_search, end_search
end

def halve_array(array, name)
  if array[end_search/2].first_name > name
    begin_search = end_search/2
  else
    end_search = end_search/2
  end
end

# binary_search(students, "Alex")

Alex = Student.new("Alex", [100,100,100,0,100])
Dave = Student.new("Dave", [10,90,80,10,100])
Chessie = Student.new("Chessie", [90,90,90,70,100])
Kimbra = Student.new("Kimbra", [70,80,90,50,100])
Klobber = Student.new("Klobber", [80,80,80,90,100])

students = [Alex, Chessie, Dave, Kimbra, Klobber]

# p students[0].letter_grade

# linear_search(students, "Klobber")


# Refactored Solution

=begin
# DRIVER TESTS GO BELOW THIS LINE
# Initial Tests:
p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0


# Additional Tests 1:

p students[0].average == 80
p students[0].letter_grade == 'B'

# Additional Tests 2:

p linear_search(students, "Alex") == 0
p linear_search(students, "NOT A STUDENT") == -1


# Reflection
=end