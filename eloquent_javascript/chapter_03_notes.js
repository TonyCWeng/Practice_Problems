/* 
Variable: storage location paired with an appropriate label that contains
a value. Can also point to a function.
Some rules for variable names:
- The first character must be a letter or underscore, it cannot be a number.
- Variable names are case sensitive. Interest_rate != interest_rate.
- There is no limit to variable name length. 
- There are certain keywords and reserved words that cannot be used as a name.

Operand: sometimes called arguments, they are what operators are applied to.
Unary: an operator that takes in a single operand
- Example such as negation (unary minus operator) and unary plus (both 
of which would attempt to convert their operand into a number). Unary plus is
shorthand Number(...).
- !! Double bang isn't a genuine operator, rather, it is literally two bang
operators chained one after another. The first bang will convert the operand to 
the negative of its Boolean value and the second will correct the negation. 
The end result is that it will generate the Boolean value of the operand. 
*/
/*
- x++, postfix increment operator and x--, postfix decrement operator

Binary: operator that takes in two operands. 
- Example being Binary math operations (plus, minus, divided by, modulo, multiply)

Binding: synonym for variable. In javascript, there are three distinct keywords
that declare bindings/variables: var, let, and const (function being different).
- var declarations are either globally or function scoped, whereas let and const
block scoped ({}). 

Statement: a line of code composed of a mix of: values, operators, expressions,
keywords, and comments. Semi-colons are added onto the end of each executable
statement. Multiple statements can be in the same line if separated by semi-colons.
Example below.
*/
a = 3; b = 5; c = 10

/*
Block: delimited by a pair of curly braces {}. Used to group 0+ statements.

Environment: the collection of bindings and their values that exist at a given
time.

Function: piece of a program wrapped in a value. Functions are executed by
putting parentheses at the end of the expression representing them. 

Expression: anything in javascript that returns a value. 

*/

//Exercises
// Write a function min that takes two arguments and returns their minimum.
const min = function(x, y) {
	return x > y ? y : x;
};
console.log(min(0, 10));
console.log(min(0, -10));

// Write a recursive function that tests whether a number is even or odd
// corresponding to these rules:
// 1) Zero is Even
// 2) One is Odd
// 3) for any other number N, its evenness is the same as N - 2

const isEven = function(x) {
	if (x < 0) x = -x;
	if (x == 0) {
		return true;
	} else if (x == 1) {
		return false;
	} else {
		return isEven(x-2);
	}
};

console.log(isEven(50));
console.log(isEven(75));
console.log(isEven(-1));

const countChar = function(str, ch) {
	count = 0;
	for (i = 0; i < str.length; i++) {
		if (str[i] == ch) {
			count++;
		}
	}
	return count;
};

