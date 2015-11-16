/* Person 1
As a user, I want to use a function called sum that will add up all the numbers
in a list, and give me the result.

As a user, I want to use a function called mean that will calculate the average
of all the numbers in a list.

As a user, I want to use a function called median that will calculate the median
of all the numbers in a list.
For a list with an odd-number of entries, the median is the middle number.
For a list with an even-number, the median is the average of the two numbers
closest to the middle.
*/

// Person 2:

// PSEUDOCODE
// Objective: Create a program for doing various math calculations.

// Input: numbers in a list
// Output: Sum, mean, or median of the list of numbers
// Steps:
// Define a method called "sum"
// Add all the numbers in the list
// Return the sum

// Define a method called "mean"
// Add all the numbers in the list
// Divide sum by number of numbers in the list
// Return the mean

// Define a method called "median"
// Arrange numbers in the list in ascending order
// IF there is an odd number of numbers in the list
//    return the number in the middle
// ELSE return the mean of the two numbers in the middle

// Person 3:
/*
// Initial Solution
function sum(numbers){
  total = 0
  for (var i = 0;  i < numbers.length ;i++){
     total = (numbers[i] += total);
  };
  console.log(total);
}


function mean(numbers){
  var sum = 0
  for (var i = 0;  i < numbers.length ;i++){
     sum = (numbers[i] += sum);
  }
  var average = (sum/numbers.length);
  console.log(average);
}

function median(numbers){
  var sort = numbers.sort(function(a, b){return a-b});
  var middle_index = (numbers.length/2);
  var middle_number = (sort[middle_index]-1);
  console.log(middle_number);
}

// Driver Code
var numsArray = [1,2,3,4,5,6,7,8,9,10,42,93]
sum(numsArray)
mean(numsArray)
median(numsArray)
*/

//Person 4: Refactor and translate to user stories

// Refactored Solution
function sum(numbers)
{
  total = 0;
  for (var i = 0;  i < numbers.length ;i++)
  {
     total += numbers[i];
  }
  return total;
}


function mean(numbers)
{
  var total = sum(numbers);
  var average = total/numbers.length;
  return average;
}

function median(numbers)
{
  var sort = numbers.sort(function(a, b){return a-b});
  var middle_index = numbers.length/2;
  var middle_number = sort[middle_index-1];
  return middle_number;
}

// Driver Code
var numsArray = [1,2,3,4,5,6,7,8,9,10,42,93]

console.log(sum(numsArray));
console.log(mean(numsArray));
console.log(median(numsArray));

/*
User Stories:
I want a program that takes a list of numbers and finds the sum.
I want a program that takes a list of numbers and finds the average.
I want a program that finds a list of numbers and finds the median number. If there are an even amount of numbers, I want it to find the lower number
*/

/* Person 1 - RESULT COMMENTS
We get 7 success, 1 failure. The median function is the one failing when it receives
an odd-numbered array. It seems this line:

  var middle_index = numbers.length/2;

produces a float (e.g. 3.5 for an array with 7 numbers). And then it can't resolve
that in the next line, because there's no 3.5 index position, right?

I suspected we would need an IF/ELSE statement for that part, because of the way it
expects the median to be returned. We need to test for an array with even number or odd number.

Array with odd number: 2, 2, 8, 8, 8,

-->Median is just the middle digit: 8, or array[2] here.

Array with even number: 2,2,8,8,

-->There is no middle digit. So we take average of 2 and 8. Something like
(array[1] + array[2]) / 2

And that's

-array.length/2 = 2 (array position)

-array.length/2 - 1 = 1 (array position) ... to get ==>

... (array[array.length/2] + array[array.length/2 - 1]) / 2


I'm sure there's another way to do all that. But that's what I imagined would work
when I did the User Tests. Apologies if that wasn't clear.

IF (the array has odd number)

-- do what Karla / Josh have above

ELSE (array has even number)

-- find the two on either side of middle, and calculate the average.
*/