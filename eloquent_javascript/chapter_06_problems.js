/* A vector type
Write a class Vec that represents a vector in two-dimensional space. It takes x 
and y parameters (numbers), which it should save to properties of the same name.

Give the Vec prototype two methods, plus and minus, that take another vector as a 
parameter and return a new vector that has the sum or difference of the two vectors’ 
(this and the parameter) x and y values.

Add a getter property length to the prototype that computes the length of the 
vector—that is, the distance of the point (x, y) from the origin (0, 0). 
*/

class Vec {
	constructor(x, y) {
		this.x = x;
		this.y = y;
	}

	plus(vector) {
		return new Vec(this.x + vector.x, this.y + vector.y)
	}

	minus(vector) {
		return new Vec(this.x - vector.x, this.y - vector.y)
	}

	get length() {
		return Math.sqrt((this.x)**2 + (this.y)**2)
	}

	// get length() {
	// 	return Math.sqrt(this.x * this.x + this.y * this.y)
	// }

	// get length() {
	// 	return (this.x**2 + this.y**2)**(1/2)
	// }
}

// console.log(new Vec(1, 2).plus(new Vec(2, 3)));
// → Vec{x: 3, y: 5}
// console.log(new Vec(1, 2).minus(new Vec(2, 3)));
// → Vec{x: -1, y: -1}
// console.log(new Vec(3, 4).length);
// → 5

/*Groups
The standard JavaScript environment provides another data structure called Set. 
Like an instance of Map, a set holds a collection of values. Unlike Map, it does 
not associate other values with those—it just tracks which values are part of the 
set. A value can be part of a set only once—adding it again doesn’t have any effect.

Write a class called Group (since Set is already taken). Like Set, it has add, 
delete, and has methods. Its constructor creates an empty group, add adds a value 
to the group (but only if it isn’t already a member), delete removes its argument 
from the group (if it was a member), and has returns a Boolean value indicating 
whether its argument is a member of the group.

Use the === operator, or something equivalent such as indexOf, to determine 
whether two values are the same.

Give the class a static from method that takes an iterable object as argument 
and creates a group that contains all the values produced by iterating over it.
*/

class Group {
	// For the constructor, we cannot just blindly accept an array to build off from
	// as the array may have duplicate values present. As such, in the static from
	// method, we iterate through a given array and add its contents one by one.
	constructor() {
		this.values = []];
	}

	has(value) {
		return this.values.includes(value);
	}

	add(value) {
		if (!this.has(value)) {
			this.values.push(value);
		}
	}

	delete(value) {
		let idx = this.values.indexOf(value)
		//indexOf will return -1 if it cannot find the value in the array.
		if (this.values.indexOf(value) !== -1) {
			this.values.splice(idx, 1)
		}
	}

	static from(array) {
		// for declaring class instances without arguments, the parentheses are optional.
		// creating a group from an array isn't too complicated. we merely iterate
		// through the array and process each value one by one with the add() method.
		let newGroup = new Group;
		for (let value of collection) {
			newGroup.add(value);
		}
		return newGroup;
	}
}

let group = Group.from([10, 20]);
console.log(group.has(10));
// → true
console.log(group.has(30));
// → false
group.add(10);
group.delete(10);
console.log(group.has(10));
// → false