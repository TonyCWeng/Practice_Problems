// The Sum of a Range
// Write a range function that takes two arguments, start and end, and returns
// an array containing all numbers from start up to (and including) end.

function range(start, end) {
	if (start > end) return [];
	let arr = [];
	for (let i = start; i <= end; i++) {
		arr.push(i);
	}
	return arr;
};
// console.log(range(1,1))
// console.log(range(1, -1)); 
// console.log(range(1, 10));

function sum(range) {
	let total = 0;
	for (let num of range) {
		total += num;
	}
	return total;
};
//console.log(sum(range(1, 3))); // returns 6
//console.log(sum(range(1,-1))); // returns 0

//Bonus: implement a range that can accept a step argument, that is the range
//will advance x steps to the next value, excluding the ones in between.
function rangeStep(start, end, step) {
	if (start > end) {
		step = -step;
	}
	let arr = [];
	if (step > 0) {
		for (let i = start; i <= end; i += step) {
			arr.push(i);
		}
	} else {
		for (let i = start; i >= end; i += step) {
			arr.push(i);
		}
	}
	return arr;
}
// console.log(rangeStep(1,-1, 3));

//Reversing an Array
function reverseArray(arr) {
	let reversed = [];
	for (elem of arr) {
		reversed.unshift(elem);
	}
	return reversed;
};
// console.log(reverseArray([1,2,3,4,5]));

function reverseArrayInPlace(arr) {
	let start = 0, end = arr.length - 1;
	while (start != end) {
		[a, b] =[arr[start], arr[end]];
		arr[start] = b, arr[end] = a;
		start++;
		end--;
	}
	return arr;
}
// reverseArrayInPlace([1,2,3,4,5]);

// Write a function arrayToList that converts an array into a list
function arrayToList(arr) {
	
};

// Write a function listToArray that gathers all the values of the list
function listToArray(list) {
	let cur = list, arr = [];
	// our while loop breaks when cur.rest = null, which is falsy.
	// otherwise, we continue iterate through the list by setting cur to
	while (cur.rest || cur) {
		arr.push(cur.val);
		cur = cur.rest;
	}
	return arr
};

c