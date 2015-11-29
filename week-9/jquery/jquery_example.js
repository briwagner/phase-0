// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css('background-color', 'pink')

//RELEASE 2:
  //Add code here to select elements of the DOM
var foot = $('#foot > p');


//RELEASE 3:
  // Add code here to modify the css and html of DOM elements

$('.mascot > h1').css('color', 'white');

var changeFoot = function() {
  foot.html("Where did it go?");
};

//$('.faded').fadeOut(1200, changeFoot);

$('img').css('border', 'solid 2px black');

//RELEASE 4: Event Listener
  // Add the code for the event listener here

$('img').on('mouseover', function(e){
  e.preventDefault();
  $(this).css('border', '4px solid purple');
});

$('img').on('mouseout', function(e){
  e.preventDefault();
  $(this).css('border', '2px solid white');
})

//RELEASE 5: Experiment on your own


})  // end of the document.ready function: do not remove or write DOM manipulation below this.
