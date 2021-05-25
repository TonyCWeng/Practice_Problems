/* Chapter 1: Values, Types, and Operators
Comparison Operators:
- greater than/less than: a > b, a < b
- Greater/Less Than or Equals: a <= b, a >= b
All Comparison Operators will return a boolean value (true/false)
When comparing values of different types, javascript will convert the values
to numbers.
- 0 is falsy.
- Any string other than an empty string will return true.
- For boolean values, true == 1 and false == 0.
- Null is also converted to 0.
- Undefined should not be compared to other values and does not get converted to 0.

Equality Operators
- Equals: a == b (Non-strict, does not check for type and will convert)
- Not Equals: a != b
- Strict Equality: a === b
*/
// console.log( 2 > 1) // true
// console.log(5 <= 4) // false

console.log(null <= 0); //returns true
console.log(null == 0); // false
let a = 1;
console.log(1 == a) // true

// In Javascript, only NaN is not equal to NaN
console.log(NaN == NaN) // false
console.log( false > true); // false
console.log(null == undefined) //true, special case.

/*
String Comparisons: done in dictionary/lexicographical order ("compared letter by
letter")
- "Z" > "A"
- "a" > "A" (lowercase is greater)
- "Z" < "a"
*/

/*
Logical Operators
- || represents logical or.
In order for || to return true, at least one of the values given to it must be true.
If both are false, then it will return false.
- && represents logical and.
In order for && to return true, both values given must be true. Otherwise, it will
return false.
- ! represents not. Unary operator that is also referred to as "bang" operator
It flips the boolean operand given to it, turning true to false and false to true.

Ternary Operator: aka conditional operator, it is written with a question mark
separating the first two operands and a colon separating the 2nd and 3rd operand.
When the value on the left returns true, the ternary operator will return the middle
value. When the value on the left returns false, it will return the value on the right.
- Ternary Operators are often used for variable assignment, as it can easily
replace an if else statement while being shorter to type and just as readable.
*/
console.log(true ? "this will get logged" : "unchosen" );
console.log(false ? "unchosen" : "this will get logged" ); 

//misc example problems
let message;
// if (login == 'Employee') {
// 	message = 'Hello';
// } else if (login == 'Director') {
// 	message = 'Greetings';
// } else if (login == '') {
// 	message = 'No Login';
// } else {
// 	message = '';
// };

//rewrite the if else block by using multiple ternary operators
let message = (login == 'Employee') ? 'Hello' : 
(login == 'Director') ? 'Greetings' :
(login == '') ? 'No Login' :
'';