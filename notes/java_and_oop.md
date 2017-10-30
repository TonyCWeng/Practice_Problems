## Jagged Array (C#)
- An array of arrays. Not really related to everything else.

## Java is "Pass by Value"
- For primatives, it is pass by value in the truest sense
- For objects, it is pass by value of the reference to the objects

## Object vs Class (Java)
- A Class is a template that describes the details of an object.
- A Class is composed of a name, attributes (variables), and operations (methods)
- An object is an instance of a class

## Interface
- Interfaces can only have constants and method stubs (methods without a body)
- All methods in an Interface are public
- Every object implementing the interface must implement all of its methods
- Ensuring compatibility without the mess of inheritance
- An object can only extend one class, but can implement many interfaces

# Four Principles of OOP (Object Orientated Design)
- Inheritance, Polymorphism, Encapsulation, Abstraction

## Abstraction
- Implementation of an object, containing properties and actions that should be reflective of what it represents. (i.e., a Dog should be able to Bark, not Moo)
- Reducing complexity by hiding irrelevant details (helper methods being private, for example)
- Generalization: reducing complexity by replacing multiple entities with a single one that performs the same/similar functions

### Abstract Class
- Cannot be instantiated. Serves as a superclass for other classes to extend from.
- Can have constants, members, method stubs, and defined methods. Methods and members of an Abstract class can be of any visibility.

## Inheritance
- when one class (subclass) inherits properties from another class (superclass) in the form of methods and fields (variables that belong to a class)
- Introduces a way to reuse code, keeping one's design DRY

## Polymorphism ( and two other forms: compile-time and runtime)
- means one to many. Usually in reference to an object belonging to more than one class.
-
- Ex. Animal class can have a subclass of Cat. If we had an instance of a Cat called Max, it would belong to both the Cat Class and the Animal superclass.
  - Strictly speaking, any Java object is polymorphic in nature in the sense that it would pass the IS-A test for itself and for the Object class. But it's a bit pedantic.

### Static Polymorphism (compile-time / static binding)
- Achieved via method overloading (several methods of the same name, but having different types/order/number of parameters)
- At compile-time, Java will distinguish these polymorphic methods by checking the method signature (the method name and the number and types of its parameters)
- By convention, methods that share the same name should serve similar functions, just taking on additional/different inputs.

### Dynamic Polymorphism (runtime / dynamic binding)
- Achieved via method overriding, which is when a subclass method overrides its parent class's method of the same name.
- The method to call is determined at runtime, hence its name of dynamic binding.

## Encapsulation (private variables)
- In order to access to variables, designer can provide public setter and getter methods.
- Purpose is to hide the class's implementation while enabling other classes to access its methods. Prevent users from being able to set the internal data of the component into an invalid or inconsistent state.

## Association
- "has a" relationship between two classes, with no particular ownership established.
- Best used when two classes are related, but there is no ownership in play.

## Aggregation
- "uses" relationship to describe weak ownership of one class over another.
  - Example being that a "School" employs many "teachers", but teachers do not depend on the school for existence and can transfer to other schools.

## Composition
- "owns" to describe a strong "has a" relationship.
- A "Car" owns an engine, wheels, etc. The car is the composition.

## Immutable Class
- State cannot change.
- Ex. In Java, Strings are immutable and concatenating or uppercasing it results in the creation of a new object.

## Static Variable
- Lifetime is the entire run of the program/function
- Automatic variables (storage is stack allocated and deallocated upon call)

## Hash Map Collision
- Dealt with in two ways.
  - 1) By having each bucket contain a linked list of elements hashed to that bucket.
  - 2) If the hash table is not full, then an algorithm to push the value into an unfilled bucket. If the bucket is full,  then a method to increase the number of buckets available and redistribute entries.
