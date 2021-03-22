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
- Most things in javascript are objects.
- Exceptions: null, undefined, strings, numbers, boolean, and symbols. These six
are referred to as primitive values or primitive types.

The Binary operator in can be used to tell whether or not an object has a given
property. It can also be used in a for loop to iterate through an object

*/
let anObject = {left: 1, right: 2}
console.log("left" in anObject); // true
console.log("middle" in anObject); //false
for (const property in anObject) {
	console.log(property);
}

/*

*/