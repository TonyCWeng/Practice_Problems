Object Orientated Programming
- a set of techniques that utilize objects as the central principle for programming
organization.

Interface: the portion of a program that users interact with, which ought to provide
functionality at an abstract level and hide the precise implementation. 
- It is both significantly safer and more user friendly for users to work with 
an interface, as no coding knowledge is required and malicious users will have
a far harder time discovering vulnerabilities in your program.

Encapsulation: separating the interface (public) from implementation (private)
-reduce complexity and also reusability

Methods: object properties that hold function values.
- When a function is called as a method, the this in its body automatically points
to the object that it was called on.
- this can be thought of as an extra parameter that is passed differently.
- each function has its own this binding, whose value is dependent on how it was called.
- arrow functions do not bind their own this, but can see the this binding of the scope around them.

Prototype: All javascript objects inherit properties and functions from a prototype.
- the prototype serves as a container for the properties that ought to be shared
across every instance of the object. An individual object, however, will contain
properties that apply only to itself and that only it will keep track of.
Ex. Each Person object would keep track of their own age, gender, weight, but, through
their prototype, may share functions such as eat(), run(), speak().

-Prototypes share a tree-like relationship, with Object.prototype at the very root.
- Object.prototype provides a few methods that appear in all javascript objects, 
one such method being toString, which converts an object to a string. That said, the
method may actually be overrode by another prototype's method that the object is inheriting from.
- As an example, arrays would inherit from an array.prototype, but also from Object.prototype.
- The purpose of the array.prototype is to provide further functionality, but also
to override the implementation of certain functions. 

Classes: define what methods and properties all instances of a class should share.
- uses the class keyword to start a declaration.
- constructor method within the class binds the instance to the class's name.
- Class instances will store properties that differ among one another (just like prototypes)
- By placing the keyword new in front of a function call, the function is treated 
as a constructor and will create an object with the appropriate prototype required.
Ex. new Human("15", "male") will create a human instance with the human prototype.
- constructors are capitalized by convention.
- can be thought of as constructor functions with a prototype property.
- currently, class declarations only methods can be added to the class's prototype, 
not properties. As such, properties can only be added by directly manipulating the
prototype only after declaring the class.

Instance: an object that contains all the properties and methods of a given class
that also contains unique, relevant property values.

Overriding Derived Properties
- whenever we add a property to an object, the property is added to the object itself.
If there was already a property of the same name within the object's prototype,
it is effectively overridden by the new property and hidden behind it.
- Overriding properties is a useful feature, as the prototype can supply generic
characteristics as needed and in cases of exceptions, we can override the generic
trait as needed.
- As an example, the standard function and array prototypes require a different
toString method. The default version provided by Object.prototype returns "[object type],"
where type is the object type. On the other hand, the one provided by array.prototype
will return a string containing every array element separated by commas.


Maps (Hash Table/ Hash Maps)
- Not to be confused with the built-in array method map(), Maps are a type of data
structure composed of key-value pairs.
- any value (objects and primitives) can be used as either a key or value.
- Unlike Objects, Maps remember the order of insertion for key-value pairs.
If we loop through it with for...of, it will return everything in order of insertion.
- correct method of storing data in Maps is through the set(key, value) method
If we try to store information as we would through an Object (via dot notation
or brackets), the information will not actually be stored in the Map for queries
and Map-specific operations (get/has/delete) will fail.

Polymorphism: the ability for multiple object types to implement the same functionality
(that can work in a different way) and support a common interface.
*Interface, in OOP, refers to a general set of methods that an instance of a class
that could respond to.
**The functions of a remote control (such as for a tv) is an example of an interface
We expect the start/stop, power, audio up, audio down buttons to perform the same
across televisions, computers, music players, etc.
- when an object can pass multiple "is a" or "type of" tests
- when a function can accept different types of values or arguments, such as in function
overriding, and returns varying results. In other languages, there also exists function
overloading, which is when there are 2+ functions of the same name that performs
differently based on the arguments provided (such as the volume function for
multiple types of geometric solids).
*Ex.2 toString method can be used on a host of different objects and primitives.
- for/of loops are another type of polymorphism as they can be used on various
different data structures (arrays, strings, objects)

Property Getters and Setters
- Accessor properties are functions that execute on getting/setting values, but
appear to be regular properties in the face of external code
- Denoted by the keywords of get and set before the property name
Ex. 
const obj = {
	get propName() {
		// getter, executed via obj.propName
		// We call it as we would call a property and do not use parenthesis.
	},
	set propName(value) {
		// setter, executed via obj.propName = value
		// Note: we cannot call the setter by obj.propName(value)
	}
}

Inheritance: Using the keyword extends, javascript classes can inherit methods
from a parent/superclass.
- A class that extends from a super/parent class is referred to as a child/subclass.
- By using the keyword super inside of our class's constructor, we call upon the 
superclass/parent's constructor and gain access to the parent class's properties.
- We can utilize the super and call the parent class's methods from it as well
Ex. super.set(x, y)
- Allows us to create new classes based off old classes and their prototype.
- Reuses code, but at the price of tangling up more code together.
- Encapsulation and Polymorphism can be thought to assist in the separation of code 

Misc.
-Math.floor returns a whole number, whereas Math.random returns a float between
0 and 1, inclusive of 0, but excludes 1.
console.log(Math.random());

// returns a value between 0 to array.length - 1
let array = [4,1,2,5];
console.log(Math.floor(Math.random() * array.length));

- If we did not have classes, we would have to resort to something like this
to create class instances. The issue with this method is that every single
instance created would result in creating and allocating a new function
copy of increment() with each copy. The data (name/score) is unique and
so it makes sense for each instance to result in creating data, but the same function
would be created over and over again.
For class instances, they do not possess the class function, but the program
will know where to find the class functions via the prototype chain.

//
function userCreator(name, score) {
	const newUser = {};
	newUser.name = name;
	newUser.score = score;
	newUser.increment = function() {
		newUser.score++;
	};
	return newUser;
}



// Object.create() can take in a prototype argument, subsequently creating non-null
// objects.
function userCreator(name, score) {
	const newUser = Object.create(functionStore);
	newUser.name = name;
	newUser.score = score;
	return newUser;
};

const functionStore = {
	increment: function() {this.score++};
	login: function() {console.log("You're logged in.")};
};