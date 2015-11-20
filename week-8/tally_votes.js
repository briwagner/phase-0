// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: Amaar
// This challenge took me [2.5] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

var highVote = function(voteCount) {
  for (var post in voteCount){
    if (voteCount.hasOwnProperty(post)){
      var race = voteCount[post];
    }
    var sortedRace = Object.keys(race).sort(function(a,b){return race[a]-race[b]});
    if (post == "president"){
      officers.president = sortedRace[sortedRace.length-1];
    } else if (post == "vicePresident"){
      officers.vicePresident = sortedRace[sortedRace.length-1];
    } else if (post == "secretary"){
      officers.secretary = sortedRace[sortedRace.length-1];
    } else if (post == "treasurer"){
      officers.treasurer = sortedRace[sortedRace.length-1];
    }
  }
};

/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
/*
Create a running_tally variable, object that holds name and # of votes.
Push # of votes w/ name property to voteCount.
Sort voteCount to find highest number for each office.
Create function to assign greatest votes to each value in officers object
*/
// __________________________________________
// Initial Solution

var voteTally = function(data) {
  for (var voter in data) {
    if (data.hasOwnProperty(voter)){
      var ballot = data[voter];
      for (var y in ballot){
        name = ballot[y]
        // console.log(voter + " voted for " + name);
        if (y == "president") {
          voteCount.president[name] ? voteCount.president[name] += 1 : voteCount.president[name] = 1;
        } else if (y == "vicePresident"){
          voteCount.vicePresident[name] ? voteCount.vicePresident[name] += 1 : voteCount.vicePresident[name] = 1;
        } else if (y == "secretary") {
          voteCount.secretary[name] ? voteCount.secretary[name] += 1 : voteCount.secretary[name] = 1;
        } else {
          voteCount.treasurer[name] ? voteCount.treasurer[name] += 1 : voteCount.treasurer[name] = 1;
        }
      }
    }
  }
  highVote(voteCount);
};

voteTally(votes);
// console.log(voteCount);
// console.log(officers);


// __________________________________________
// Refactored Solution






// __________________________________________
// Reflection
/*
This was RIDICULOUS! Lord, it wasn't until the end and I started printing out the
individual elements we created in the for..in loops, that I started to get it. I went
back and renamed some variables because I finally got which part of the whole
they were. Having the variables named accurately made it clear what was happening. I'm
convinced we went too deep into the Matrix, with the loops, but I don't see an
easier way to do it. Ultimately, it's fascinating how, in the end, I combined one of the
top level variables with an inner-most one to make it work, and write the final winner's
names to the winner object.

The .sort() statement was crucial. I was afraid of pushing the names into the winner object,
because I didn't know how to sort the object. Unlike in Ruby. But my friends online helped.
That line is a clever way to sort an object, the JS way.

This challenge helped drive me mad. And I see what I call a manual way to run .each, from Ruby.
Obviously, the basic strategies overlap from one language to another, but the implementation will
change. This was a crash course in learning how to do something with my left hand, say.
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
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)

