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
console.log(grid_maker(8).length);
