/*
Gradebook from Names and Scores

I worked on this challenge [with Jacob Crofts]
This challenge took me [1] hours.

You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).

Do not alter the students and scores code.

*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]



// __________________________________________
// Write your code below.


var gradebook = {};

for(var index = 0; index < students.length; index++) {
  gradebook[students[index]] = {};
  gradebook[students[index]].testScores = scores[index];
}

gradebook.addScore = function(name, score) {
  gradebook[name].testScores.push(score);
};

gradebook.getAverage = function(name) {
  return average(gradebook[name].testScores);
};

var average = function(array) {
  var sum = 0;
  for (var i = 0; i < array.length; i++) {
    sum += array[i];
  }
  return (sum/array.length);
};

gradebook.getAverage("Joseph");

// __________________________________________
// Refactored Solution








// __________________________________________
// Reflect
/*
Functions can be added to an object in the same way other props can.
The biggest hangup here is what arguments you're passing in. Sometimes
you need to be careful with the syntax of the object.prop that we're
using. Othertimes, we can use the 'this.' syntax for prop values, if the
object structure allows it.

This challenge asks us to access object values in the two main ways.
object.value
object[value]
We have a loop where the value is going to change, so we use the second
way. We also have a static value so we use the top method as well. And best
of all, we put them both together.
object[value].value

We didn't stumble on any new methods here. It was a bit of a trick getting
the test to pass based on how the function was returning the value. Ultimately
we had to return the average twice, once in the nested average function, as
well as the parent getAverage function. There seems to be something wrong with
that.
*/

// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)


