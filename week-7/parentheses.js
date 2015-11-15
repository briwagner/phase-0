var myFunc = function(x) {
  if (x > 999){
    x = x.toString().split("");
    var newNumber = [];
    while(x.length >= 3){
      x_sub = x.splice(x.length-3, 3);
      newNumber.unshift(x_sub.join(""));
    }
    if (x.length > 0) {
      newNumber.unshift(x.join(""));
    }
    return newNumber.join(",");
  } else {
    return x.toString();
  }
};

myFunc(1000000000);