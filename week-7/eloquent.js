// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var foo = 7;

doubleFoo = foo + foo;

console.log(doubleFoo);

/*

function fave_food () {
  var userFood = prompt("What's your favorite food?");
  alert(userFood.toUpperCase() + "? That's my favorite food too!");
};

fave_food();

*/


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

var triangle = function(symb, times) {
  myArray = [];
  for (var i = 0; i < times; i++){
    myArray = myArray.concat(symb);
    console.log(myArray.join(""));
  }
}

triangle("#", 7);

var toOneHundred = function() {
  for (var i = 1; i < 100; i++){
    if (i % 3 === 0){
     console.log("Fizz");
    } else if (i % 5 === 0) {
      console.log("Buzz");
    } else {
    console.log(i);
    }
  }
}

toOneHundred();


// Functions

// Complete the `minimum` exercise.

function minimum (x, y) {
  if (x > y) {
    return x;
  } else {
    return y;
  }
};

minimum(9, 10);


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name: "Brian",
  age: 39,
  faveFoods: ["brisket", "beans", "rice"],
  quirk: "Never tasted playdough"
};
