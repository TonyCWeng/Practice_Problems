/* Flattening
Use the reduce method in combination with the concat method to “flatten” an 
array of arrays into a single array that has all the elements of the original arrays.
*/
let arrays = [[1, 2, 3], [4, 5], [6]];
// Your code here.
//console.log(arrays.reduce((a, b) => a.concat(b)));
// → [1, 2, 3, 4, 5, 6]

/* Your own loop
Write a higher-order function loop that provides something like a for loop 
statement. It takes a value, a test function, an update function, and a body function. 
Each iteration, it first runs the test function on the current loop value and stops 
if that returns false. Then it calls the body function, giving it the current value. 
Finally, it calls the update function to create a new value and starts from the beginning.
*/

// Your code here.
const loop = function(num, test, update, body) {
	while (test(num)) {
		body(num)
		//need to set num to the new, updated value. Cannot just call update, 
		// as it would only return num = 2 locally and not affect the num being tested in
		// the while loop.
		num = update(num)
	}
}
// loop(3, n => n > 0, n => n - 1, console.log);
// → 3
// → 2
// → 1

/*
Everything
Analogous to the some method, arrays also have an every method. This one returns 
true when the given function returns true for every element in the array. In a way, 
some is a version of the || operator that acts on arrays, and every is like the && operator.
*/

// function every(array, test) {
//   for (const element of array) {
// 	  if (!test(element)) return false;
//   }
//   return true;
// }

function every(arr, test) {
	//some() will return true if any element passes the test. We need to use it to
	//find a false and then return false if that occurs. As such, we require two
	// bang operators. One to use some to test for falsy and another to return the
	// opposite as we ideally have everything "fail" the not!test and then return
	// that everything holds true.
	return !arr.some(element => !test(element));
}

console.log(every([1, 3, 5], n => n < 10));
// → true
console.log(every([2, 4, 16], n => n < 10));
// → false
console.log(every([], n => n < 10));
// → true

/* Dominant writing direction
	
*/