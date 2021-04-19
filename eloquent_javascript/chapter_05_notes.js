/* Chapter 5: Higher Order Functions

Abstraction: hiding all non-relevant data of an object/program to reduce complexity
and increase efficiency.

Higher Order Functions: does at least one of the following:
1) takes one or more functions as an argument
2) returns a function as its result
- Non-higher order functions are referred to as first-order functions.

Javascript comes with several built-in Higher Order functions for Arrays.
- arr.filter, for example, takes in a function value to test the contents of an array
and produces a new array containing all values that pass the test. 
- arr.map applies a function to all elements of an array and produces a new array
containing transformed values of the array. The new array will have the same length
as the previous one, but the values will have been mapped to a new form as dictated
by the function argument.
- filter and map are both considered to be Pure functions, as they do not cause
side effects and do not mutate an existing array. Instead, they return a new array.
- arr.reduce computes a single value from an array by going through the array and
computing an accumulated value with each and every entry. 
*/
//Nested function example. five is a function that returns a function that,
//when called, will return 5.

const five = function() {
	return 5;
};
console.log(five) // [Function: five] 
console.log(five()) // 5

// we can nest further

const nestedFive = () => {
	return () => {
		return 5;
	}
};

// can also be written in one line like so.
// const nestedFive = () => () => 5;

console.log(nestedFive); // [Function: nestedFive]
console.log(nestedFive()); // [Function] An anonymous function
console.log(nestedFive()()); // 5

// in this scenario, reduce was supplied with an anonymous arrow function and 
// an optional starting value to accumulate with.
console.log([1,2,3,4].reduce((a, b) => a + b, 6)); //16

// when reduce is not passed a starting value, it will take the first element
// of the array as its start value and start reducing from the second element.
console.log([1,2,3,4,5].reduce((a, b) => a + b)); //15