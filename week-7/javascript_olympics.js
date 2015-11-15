 // JavaScript Olympics

// I paired [with Jess Richardson] on this challenge.

// This challenge took me [#] hours.


// Warm Up


// Bulk Up

var athletes = [
  {
     person: "Sarah Richardson",
     sport: "Ladies' Singles",
     win: function() {console.log(this.person + " won " + this.sport)},
    },
    {
      person: "Abby Wambach",
      sport: "soccer",
      win: function() {console.log(this.person + " won " + this.sport)},
    },
    {
      person: "Alex Morgan",
      sport: "soccer",
      win: function() {console.log(this.person + " won " + this.sport)},
    }
  ];

console.log(athletes[1].win());


// Jumble your words

var reverseStr = function(string) {
 str_to_array = string.split("").reverse();
 console.log(str_to_array.join(" "));
}
reverseStr("apple");


// 2,4,6,8

var evenNum = function(array) {
 var evenArray = [];
 for (i = 0; i <= array.length; i++) {
  if (i % 2 == 0) {
  evenArray.push(i);
  }
 }
  return evenArray;
}
evenNum([1,2,3,4,5,6]);


// "We built this city"

var Athlete = function(name, age, sport, quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
};

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!");
console.log(michaelPhelps.constructor === Athlete);
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote);


// Reflection
/*
It's always good to review nested elements in JS or Ruby. It was a bit of a
challenge to remember how to put together the first exercise, with the
objects nested in an array. But step-by-step, it comes back. I also used this
exercise to remember how to build a constructor. I'm sure I did this several
weeks ago in a different lesson format.

Constructor functions are similar to classes in Ruby. We can define the
structure of an object type and then create multiple versions of it,
each with specific values, etc. It's helpful because we know that each
instance of that object will have certain values and we know how to access
them. But they are all unique as well.

A JS constructor spits out an object, whereas the result of a Ruby class
instance is a more sophisticated entity. A constructor can contain functions,
etc. inside it, but it's a single object at heart. A Ruby class can have
multiple variables and functions inside of it, which interact with each other
in complicated ways. Also, we can have Ruby classes that are children of
multiple different parent classes.

*/