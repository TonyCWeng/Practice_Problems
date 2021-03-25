/*
Chapter 4: Objects and Arrays

Arrays: data type used for storing sequences of values.
- Arrays are zero-indexed, meaning that the first value of an array is accessed
like so.
Ex. const Arr = [1,2,3,4,5]; Arr[0] == 1.
- Due to zero indexing, he last entry of an array is Arr.length - 1
Ex. Arr[Arr.length - 1] 

Properties: values associated with a Javascript Object. All Javascript values
have properties except for null and undefined.

There are three ways to access the property of an object:
1) objectName.property
Ex. person.age
2) objectName["property"]
Ex. person["age"]
3) objectName[expression]
Ex. x = "age"; person[x]

1) is referred to as dot notation, whereas 2) and 3) fall under square bracket
notation. Dot notation only works with names that are valid variable names, but 
with bracket notation, property names can be any string or symbol. Any other
value, such as numbers, are coerced into a string.
*/
let object = {};
object['1'] = "one";
console.log(object[1]); // "one" 1 is coerced into a string

/*
Methods: properties that are functions.

Objects: list of property-value pairs (Ex. let date = {day: "Monday", month: "March"})
- objects have no order, so there's no guarantee that they are going to be
iterated through in the same order they were created. As such, sorting is not supported.
- Most things in javascript are objects.
- Exceptions: null, undefined, strings, numbers, boolean, and symbols. These six
are referred to as primitive values or primitive types. Primitive values are all
immutable. 
- Can retrieve all properties of an object into an array with the 
Object.keys function. 

The Binary operator in can be used to tell whether or not an object has a given
property. It can also be used in a for loop to iterate through an object.

*/
let anObject = {left: 1, right: 2};
//Object.assign copies all properties from one object into another.
Object.assign(anObject, {special: 3, 4:4}); // anObject = { '4': 4, right: 2, special: 3, 4:4 }
console.log("left" in anObject); // true
console.log("middle" in anObject); // false
console.log(Object.keys(anObject)); // [4, 'left', 'right', 'special']
console.log(Object.values(anObject)); // [4, 1, 2, 3]
// delete will remove the named property from the object, reducing the number of
// properties in anObject from 4 to 3.
// attempting to access anObject.left would then return undefined.
delete anObject.left;
console.log(anObject); //{ '4': 4, right: 2, special: 3 }
//for both keys and values, 4 ends up getting iterated through first.


for (const property in anObject) {
	console.log(property);
}

/*
Mutability: In Javascript, strings, numbers, and booleans are all immutable.
Which is to say that when we combine strings and derive new values, we are creating
new strings and not mutating any pre-existing string into something else in the
system's memory. 
- Primitive values are not mutable (null, undefined, strings, numbers, boolean, and symbols)
As such, their methods do not modify the String object in memory, but instead
create and return a new String object.

Strings are not objects, but when used in an expression like str.indexOf(2),
a new anonymous String object derived from it and is assigned the property indexOf.
Javascript will automatically convert primitives to objects, enabling us to call
String object methods on them.
- Strings have built-in properties such as slice() and indexOf(str), but cannot
have additional properties added to them (there's no error when trying, but 
they won't actually be stored).

*/
var myVar = "Hello World";
myVar = "Hello World!!!!" //a new String reference is being assigned to myVar
capitalizedVar = myVar.toUpperCase(); // toUpperCase() is creating a new string based on the original referenced string
console.log(capitalizedVar.indexOf("z")); //returns the first index that has the str arg as a value. 
// indexOf can accept more than 1 char, enabling us to search for substrings and
// returns -1 if it cannot be found.
capitalizedVar.slice(3, 7); //returns 'LO W',

// string.length returns the length of a string
console.log("the length of the word adversity is " + String("adversity".length));

// trim removes the whitespace from the start and end of a string
const untrimmed = "  trim please    ";
trimmed = untrimmed.trim(); 
console.log(trimmed); // only "trim please" remains

//padStart takes the desired length and padding character as arguments and formats the string it is called on.
const pad = "9";
pad.padStart(3, "0"); // returns "009"
pad.padStart(4, "X"); // returns "XXX9"
/*
- In javascript, only objects and arrays are mutable. 
- Two different objects with identical contents are not considered to be equal to
one other.That is to say, we can change their properties and thus there is a 
difference between having two bindings point to the same object and having 
two objects containing the same properties.
*/

let ob1 = {value: 10};
let ob2 = ob1;
let ob3 = {value: 10};
console.log(ob1 == ob2); // true
console.log(ob1 == ob3); // false
ob1.value = 15;
console.log(ob2.value); //It changes to 15 because ob2 points to ob1
console.log(ob3.value); //It remains at 10 because ob1 and ob3 are two different objects
/*
- If we declare an object with const, then the const binding cannot be changed,
but are still able to change the contents of the object it is pointed towards.
*/
const score = {visitors: 0, home: 0};
score.visitors = 1; // this would change the visitor property value to 1.
//score = {visitors: 1, home: 1}; // Throws the error TypeError: Assignment to constant variable.

// Looping through the contents of an array
let arr = [1,2,3,4,5];
for (let i = 0; i < arr.length; i++) {
	let entry = arr[i];
	console.log(entry ** 2);
}
// Modern, succinct version of above loop
for (let entry of arr) {
	console.log(entry ** 2);
}

/* Arrays
-As with objects, two separate arrays that contain the exact same contents are ultimately
not identical with one another (==). As such, changing the contents of one such array
would not affect the other. The contents of an array do not determine equality.
Array methods 
-push() will tack an element to the end of array
-pop() will remove the last element of an array
-shift() will remove the first element of an array
-unshift will add an element to the start of the array.
- slice(start, end) will return an array that has the elements between the starting
and ending indices, inclusive of the starting point and excluding the end index entry.
- slice(start); when only given the starting index, the slice method will return an array
including everything from the start index.
- a.concat(b); strings arrays a and b together, with a's entries predictably in
front of b's.
- a.indexOf(x, start = 0); will search for entry x, starting with index 0. if 
given a secondary argument, will start searching from said point.
- a.lastIndexOf(x, start = ); will search for entry x, starting from the end of
the 
*/
arr.slice(2); //returns [3,4,5]
arr.slice(2, 5); //returns [3,4,5]
arr.slice(2) == arr.slice(2); //returns false
