// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Kevin Corso.

// Pseudocode
/*
Create a function that accepts an integer
Turn integer into an array w/ a new variable
Reverse the array
LOOP
set counter to 3, while counter < array.length
insert a comma at the position == counter
increment counter += 4
END LOOP
reverse and join array
return array

*/

// Initial Solution

var addCommas = function(integer){
  var newArray = integer.toString().split("").reverse();
  for (var i = 3; i < newArray.length; i+= 4) {
    newArray.splice(i, 0, ",");
  };
  newArray = newArray.reverse().join("");
  console.log(newArray);
};

addCommas(1234555556);


// Refactored Solution




// Your Own Tests (OPTIONAL)




// Reflection
/*

I feel the strategy here was similar to the Ruby one, albeit with different
methods. I don't recall using any novel methods in Ruby, so it was a similar
task to use a simple looping structure to insert the commas into an array.
I'm pretty sure we used a different tack than I had earlier, thanks to my
partner's suggestion. It was a simple question of injecting the comma
character at a specific slot into the original array.

The important thing about loops in JS is getting the syntax of the for ()
statement written properly. I constantly forget to use ; in between instead
of commas and get errors. But that's easy to fix. Also the open-endedness of
the looping structure is very cool. You don't have to iterate starting at 0
and increment by 1. My partner's suggestion to start at 3 and increment by 4
makes the method amazingly quick and efficient.

I think the unique looping method above is what made the difference here.
I can't think of a way to do the same thing so tersely in Ruby.

The key methods here are split and join, to convert the integer to an array
and then into a string. Also splice is the magic method that injects the
comma character as needed. It's quite versatile, because you can replace
elements or not replace them; insert multiple copies of the new element;
and of course specify where to inject, not just at the start or end as with
shift, etc.

*/