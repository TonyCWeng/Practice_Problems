// equivalents
// continue === next if (ruby equivalent)
// for (let i = 0; i < 10; i++) {
//   if (i === 3) { continue;}
//   console.log(i);
// }

// break, same as ruby. Break out of loop when conditional is met.

// for (let j = 0; j < 10; j++) {
//   if (j === 3) { break;}
//   console.log(j);
// }

// for/in loop
// for/in on an object/hash will return the person's property values,
// as we are keying in on the object's properties
// var person = {fname:"John", lname:"Doe", age:25};

// when used on an array, it goes through the array's values
var person = [1,2,3];

var text = "";
var x;
for (x in person) {
    text += person[x];
}
console.log(text);

var favNum = 3;
switch(favNum) {
  case 
}
