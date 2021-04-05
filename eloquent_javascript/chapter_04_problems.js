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


// Write a function arrayToList that transforms an array into an equivalent list.
function arrayToList(arr) {
	// we create a list variable that we can return to in the end and a pointer
	// variable that will enable us to create each object layer.
	// at the very end, we expect rest to equal null, so that is when the loop
	// behaves differently and we do not set cur.rest to a fresh object layer.
	let list = {value: null, rest: null};
	// cur initially points to the start of our list, which is a fresh list object
	// that contains the properties of value and rest. 
	// value is a number and rest is either a nested object or points to null.
	let cur = list;
	for (let i = 0; i < arr.length; i++) {
		cur.value = arr[i];
		if (i == arr.length - 1) {
			cur.rest = null;
		} else {
			// cur = cur.rest is our way of proceeding to the next position of the list
			cur.rest = {value: null, rest: null};
			cur = cur.rest
		}
	}
	return list;
};

// console.log(arrayToList([1,2,3]));

// create a function that adds an element to the front of the list.
function prepend(element, list) {
	return {value: element, rest: list};
};

// console.log(prepend(4, arrayToList([1,2])));

// create a function, nth, which takes a list and an index position and
// returns the element at the given position in the list
function nth(list, index) {
	let cur = list;
	let pos = 0;
	// we continue to iterate through the list unless pos > index or if cur is null
	while (pos <= index && cur) {
		if (pos == index) return cur.value;
		//update our current index position and set cur to the rest of the list
		pos++;
		cur = cur.rest;
	}
	return undefined;
}
// console.log(nth(arrayToList([1,2,3]), 4));

// in the recursive version, we need to proceed through the list in each iteration
// and reduce the index in turn. As such, we need to return if the list is no more
// or if there is no nth element (as in the size of the list is less than nth)
function recursiveNth(list, index) {
	// if the list is long enough to contain the nth position, we return the corresponding value
	if (list && index == 0) return list.value;
	// 1) if we've reached the end of the list, return undefined.
	// 2) if we are given a negative index value, return undefined. 
	if (!list || index < 0) return undefined;
	return recursiveNth(list.rest, index - 1);
}

console.log(recursiveNth(arrayToList([1,2,3]), 3));