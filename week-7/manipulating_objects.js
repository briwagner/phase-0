 // Manipulating JavaScript Objects

// I worked on this challenge: [by myself,]

// There is a section below where you will write your code.

// DO NOT ALTER THIS OBJECT BY ADDING ANYTHING WITHIN THE CURLY BRACES!
var terah = {
  name: "Terah",
  age: 32,
  height: 66,
  weight: 130,
  hairColor: "brown",
  eyeColor: "brown"
}
// __________________________________________
// Write your code below.

var adam = {
  name: "Adam",
  spouse: terah,
};

terah.spouse = adam;

terah.weight = 125;

delete terah.eyeColor;

carson = {
  name: "Carson",
};

carter = {
  name: "Carter",
};

colton = {
  name: "Colton",
};

terah.children = {
  carson: carson,
  carter: carter,
  colton: colton
};

adam.children = terah.children;

// __________________________________________
// Reflection: Use the reflection guidelines
// One tricky challenge was creating the first child and having
// it link back to the mother. JS tends to move from top to bottom
// with variable declarations. So a reference to something that is
// defined later in the script will not work. I needed to reverse the
// order in which the variables apepared. Declare first, then reference.
// I had the same problem with the final line. I had to declare Adam's
// children as a standalone value, at the end of the script.

// Adding props is easy. I had never before seen the delete command on
// an object property. Very interesting.

// Personally, I like the way JS works with object properties, compared to
// Ruby. I understand the role of symbols in Ruby, but it seems overly
// complicated to access and create them, and to have symbols use a distinct
// syntax from keys that are declared as strings. Anyway ... I learned about
// the delete prop command.


// __________________________________________
// Driver Code:  Do not alter code below this line.
function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (adam instanceof Object),
  "The value of adam should be an Object.",
  "1. "
)

assert(
  (adam.name === "Adam"),
  "The value of the adam name property should be 'Adam'.",
  "2. "
)

assert(
  terah.spouse === adam,
  "terah should have a spouse property with the value of the object adam.",
  "3. "
)

assert(
  terah.weight === 125,
  "The terah weight property should be 125.",
  "4. "
)

assert(
  terah.eyeColor === undefined || null,
  "The terah eyeColor property should be deleted.",
  "5. "
)

assert(
  terah.spouse.spouse === terah,
  "Terah's spouse's spouse property should refer back to the terah object.",
  "6. "
)

assert(
  (terah.children instanceof Object),
  "The value of the terah children property should be defined as an Object.",
  "7. "
)

assert(
  (terah.children.carson instanceof Object),
  "carson should be defined as an object and assigned as a child of Terah",
  "8. "
  )

assert(
  terah.children.carson.name === "Carson",
  "Terah's children should include an object called carson which has a name property equal to 'Carson'.",
  "9. "
)

assert(
  (terah.children.carter instanceof Object),
  "carter should be defined as an object and assigned as a child of Terah",
  "10. "
  )

assert(
  terah.children.carter.name === "Carter",
  "Terah's children should include an object called carter which has a name property equal to 'Carter'.",
  "11. "
)

assert(
  (terah.children.colton instanceof Object),
  "colton should be defined as an object and assigned as a child of Terah",
  "12. "
  )

assert(
  terah.children.colton.name === "Colton",
  "Terah's children should include an object called colton which has a name property equal to 'Colton'.",
  "13. "
)

assert(
  adam.children === terah.children,
  "The value of the adam children property should be equal to the value of the terah children property",
  "14. "
)

console.log("\nHere is your final terah object:")
console.log(terah)
