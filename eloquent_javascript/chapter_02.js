// chapter 2 problems

// Looping a Triangle
function triangleLoop() {
	let layer = "";
	for (let i = 0; i < 7; i++) {
		layer += "#";
		console.log(layer);
	}

}

//FizzBuzz
// for (let i = 1; i < 101; i++) {
// 	if (i % 15 == 0) {
// 		console.log("FizzBuzz")
// 	} else if ( i % 3 == 0) {
// 		console.log("Fizz")
// 	} else if (i % 5 == 0) {
// 		console.log("Buzz")
// 	} else {
// 		console.log("")
// 	}
// }

//Chess Board
function grid_maker(size = 8) {
	grid = ""
	even = even_row(size)
	odd = odd_row(size)
	for (let i = 0; i < size; i++) {
		if (i % 2 == 0) {
			grid += even;
		} else {
			grid += odd;
		}
	}
	console.log(i)
	return grid
}

function even_row(size = 8) {
	row = ""
	for (i = 0; i < size; i++) {
		if (i % 2 == 0) {
			grid += " "
		} else {
			grid += "#"
		}
	}
	grid += "\n"
	return row
}

function odd_row(size = 8) {
	row = ""
	for (i = 0; i < size; i++) {
		if (i % 2 == 0) {
			grid += "#"
		} else {
			grid += " "
		}
	}
	grid += "\n";
	return row
} 
console.log(grid_maker());

// Book solution
let size = 8;
let board = "";
// we have a nested for loop, the outer one is responsible for creating
// the required number of rows whereas the inner loop creates the row itself.
for (let y = 0; y < size; y++) {
	for (let x = 0; x < size; x++) {
		if ((x + y) % 2 == 0) {
			board += " ";
		} else {
			board += "#";
		}
	}
	//add newline at the end of the completed row.
	board += "\n"
}

// console.log(board);