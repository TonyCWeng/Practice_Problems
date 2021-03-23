/*
Chapter 4: Objects and Arrays

Arrays: data type used for storing sequences of values.
- Arrays are zero-indexed, meaning that the first value of an array is accessed
like so. Ex. const Arr = [1,2,3,4,5]; Arr[0] == 1.

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
- In javascript, only objects and arrays are mutable. 
- Primitive values are not mutable (null, undefined, strings, numbers, boolean, and symbols)
As such, their methods do not modify the String object in memory, but instead
create and return a new String object.
- Strings are not objects, but when used in an expression like str.indexOf(2),
a new anonymous String object derived from it and is assigned the property indexOf.
Javascript will automatically convert primitives to objects, enabling us to call
String object methods on them.
*/
var myVar = "Hello World";
myVar = "Hello World!!!!" //a new String reference is being assigned to myVar
myVar = myVar.toUpperCase(); // toUpperCase() is creating a new string based on the original referenced string

/*


*/