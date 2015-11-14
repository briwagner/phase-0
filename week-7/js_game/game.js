 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Rain on the flowers. Get points when you land on different flowers

// Overall mission:
// Goals: pick a flower and rain on it.
// Characters: Raindrop
// Objects:
// Functions:

/* Pseudocode
Create a raindrop.
Click button to make it fall.
When it hits a flower, take the points from the flower.
*/

window.onload = function() {

  nextDrop();
  setFlower(flower1);
  setFlower(flower2);
  setFlower(flower3);
  setFlower(flower4);

}

var score = 0;

var points = 0;

var raindrop = {
  size: 50,
  color: "white",
  left: 125,
  top: 50,
};

var flower1 = {
  value: 5,
  color: randomColor,
  newDropSize: 70,
  name: "flower1"
};

var flower2 = {
  value: 2,
  color: randomColor,
  newDropSize: 50,
  name: "flower2"
};

var flower3 = {
  value: 1,
  color: randomColor,
  newDropSize: 30,
  name: "flower3"
};

var flower4 = {
  value: 7,
  color: randomColor,
  newDropSize: 40,
  name: "flower4"
};

// initialize raindrop and flower

var nextDrop = function() {
  if (document.getElementById("rain")) {
    alert("One drop at a time, buddy!");
  } else {
    moreRain();
    document.getElementById("main").appendChild(newDrop);
  }
};

var setFlower = function(x) {
  console.log(x);
  x.color = randomColor();
  console.log(x);
  document.getElementById(x.name).style.backgroundColor = x.color;
};

var newDrop = document.createElement("div");

var moreRain = function() {
  newDrop.id = "rain"
  newDrop.style.backgroundColor = raindrop.color;
  newDrop.style.height = raindrop.size + "px";
  newDrop.style.width = raindrop.size + "px";
  // randomize left value
  newDrop.style.left = raindrop.left + "px";
  newDrop.style.top = raindrop.top + "px";
};

// change drop values

var rainColor = function(color) {
  raindrop.color = color;
  document.getElementById("rain").style.backgroundColor = raindrop.color;
};

// var rainSize = function(size) {
//   raindrop.size += size;
//   document.getElementById("rain").style.height = raindrop.size + "px";
//   document.getElementById("rain").style.width = raindrop.size + "px";
// };

var rainMove = function(distance) {
  raindrop.left += distance;
  document.getElementById("rain").style.left = raindrop.left + "px";
};

// triggered when drop reaches flowers

var removeDrop = function() {
  if (raindrop.top >= 351) {
    var main = document.getElementById("main");
    main.removeChild(main.childNodes[main.childNodes.length-1]);
    raindrop.top = 50;
    getFlower();
    setTimeout(confirmNextDrop, 700);
  }
};

var getFlower = function() {
  if (raindrop.left <= 125) {
    points = flower1.value;
    changeColor = flower1.color;
  } else if (raindrop.left > 125 && raindrop.left <= 360) {
    points = flower2.value;
    changeColor = flower2.color;
  } else if (raindrop.left > 360 && raindrop.left <= 595 ) {
    points = flower3.value;
    changeColor = flower3.color;
  } else {
    points = flower4.value;
    changeColor = flower4.color;
  }
  raindrop.color = changeColor;
  updateScore(points);
};

var updateScore = function(x) {
  score += x;
  document.getElementById("score-number").innerHTML = score;
}

var confirmNextDrop = function() {
  var c = confirm("Hey you got " + points + " points. \nPlay another drop");
  if (c) {
    nextDrop();
  }
};


// button functions

var rainTop = function(distance){
  raindrop.top += distance;
  document.getElementById("rain").style.top = raindrop.top + "px";
  removeDrop();
};

var dropColor = function() {
  raindrop.color = randomColor();
  document.getElementById("rain").style.backgroundColor = raindrop.color;
};

var moveRight = function() {
  raindrop.left += 235;
  if (raindrop.left <= 830 ){
    document.getElementById("rain").style.left = raindrop.left + "px";
  } else {
    raindrop.left = 125;
    document.getElementById("rain").style.left = "125px";
  }
};

var randomColor = function() {
  var rand = Math.random() * 5;
  if (rand <= 1) {
    return newColor = "white";
  } else if (rand > 1 && rand <= 2) {
    return newColor = "yellow";
  } else if (rand > 2 && rand <= 3){
    return newColor = "red";
  } else if (rand > 3 && rand <= 4){
    return newColor = "black";
  } else {
    return newColor = "mediumblue";
  }
};

// var biggerRain = function() {
// };

/*
REFLECTION

Hardest part was thinking about a game mechanic that would be doable and
not totally based on console and typing. It seemed that simple buttons to
call the functions would work best here.

I was comfortable working with the objects and simple values therein. I debated
creating a garden object with the four flowers embedded in there, but I didn't
want to get into nested objects. I understand the mechanics, I just didn't want
to be a mechanic today.

I spent some time working with the style.top, etc. methods. It's tricky because
they are called the same thing in JS as in CSS, but the camelCase syntax can be
a bit confusing. I have yet to find a list of the JS methods with the proper
spelling for all the style methods.

Plain JS has a rather tortured way of accessing DOM elements, compared to jquery.
And it's really catered to elements with ID's. But storing the DOM element in a
variable allows you to then do something with it. Get or set the value.
*/