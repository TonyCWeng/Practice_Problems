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
- when a piece of code can accept different types of values or arguments
Ex. toString method can be used on a host of different objects and primitives.
- for/of loops are another type of polymorphism as they can be used on various
different data structures (arrays, strings, objects)