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
to override the implementation of certain functions. For example, the toString method
used by array instances is actually from the array.prototype, as arrays cannot be 
converted to strings in the same manner that primitives can.

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