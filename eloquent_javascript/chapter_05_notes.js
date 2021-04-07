/* Chapter 5: Higher Order Functions

Abstraction: hiding all non-relevant data of an object/program to reduce complexity
and increase efficiency.

Higher Order Functions: does at least one of the following:
1) takes one or more functions as an argument
2) returns a function as its result
- Non-higher order functions are referred to as first-order functions.


*/
//Nested function example. five is a function that returns a function that,
//when called, will return 5.
const five = function() {
	return 5;
};
console.log(five) // [Function: five] 
console.log(five()) // 5
