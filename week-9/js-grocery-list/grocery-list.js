$('document').ready(function(){
  resetFields();
});

/* PseudoCode

Create empty object named groceryList

Create function to add item and quantity
-validate if item and quantity are valid, i.e. quantity is an integer
-grab value of item and quantity from form boxes and store separately in variables
-check if item was entered already
  FOR items in GROCERYLIST
    IF item is found, update quantity
    ELSE add item and quantity to groceryList
-button onclick will activate addItem function.

Create function to deleteItem
-grab text from form and store in variable
  FOR items in GROCERYLIST ->
    IF item is found, delete it
    ELSE alert 'can't find that'.
-button onclick will activate deleteItem

*/

var groceryList = { };

var addNewItem = function() {
  validateNewList();
  var newItem = $('#addItem').val();
  var newQuant = $('#addItemQuant').val();
  var uniqueItem = true;
  checkForItem(newItem, newQuant);
  if (uniqueItem) {
    groceryList[newItem] = newQuant;
  }
  resetFields();
  printList();
};

var validateNewList = function() {
  if ( $('#sampleItem').html() == "quantity - item" ) {
    $('#list').empty();
    $('#deleteButton').css('display', 'block');
  }
};

var checkForItem = function(inputItem, inputQuant) {
  for (var entries in groceryList){
    if (entries == inputItem) {
      uniqueItem = false;
      alert("Already on the list. Changing quantity to " + inputQuant);
      return;
    }
  }
};

var printList = function() {
  $('#list').empty();
  for (items in groceryList) {
    var entry = groceryList[items] + " - " + items;
    $('#list').append('<li>' + entry + '</li>');
  }
};

var deleteItem = function() {
  var itemToRemove = $('#removeItem').val();
  var confirmDelete = confirm("You want to remove " + itemToRemove + "?");
  if (confirmDelete == true) {
    for (var entries in groceryList) {
      if (entries == itemToRemove) {
        delete groceryList[itemToRemove];
      } else {
        alert("That's not on the list.");
      }
    }
  }
  resetFields();
  printList();
};

var resetFields = function() {
  $('#addItem').val('');
  $('#addItemQuant').val('');
  $('#removeItem').val('');
};

/*

REFLECTION

It's still a trial-and-error process to get the interaction with the DOM working
right. I understand the basics, but I never write it right the first time. I'm very
comfortable now working with objects in JS. And this was a good time to practice the
for-in loop that we struggled a bit with last week.

The hardest part was getting the html buttons to work with the JS code. I think I
somehow had duplicate variable names, or somehow used reserved words for variables,
and it wasn't working.

I can't see an array working in this space at all. Aside from putting the item and
quantity together in a single string, split by a symbol. And then using regex to
divide them back apart. tomato-4 That sounds crazy.


*/