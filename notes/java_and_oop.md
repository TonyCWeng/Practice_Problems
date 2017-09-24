## Jagged Array (C#)
- An array of arrays. Not really related to everything else.

## Object vs Class (Java)
- An object is an instance of a class
- A Class is a template that describes the details of an object. A Class is composed of a name, attributes, and operations (methods)

# Four Principles of OOP
- Inheritance, Polymorphism, Encapsulation, Abstraction

## Inheritance
- when one class (subclass) inherits properties from another class (superclass) in the form of methods and fields (variables that belong to a class)

## Polymorphism ( and two other forms: compile-time and runtime)
- means one to many. Usually in reference to an object belonging to more than one class.
- Ex. Animal class can have a subclass of Cat. If we had an instance of a Cat called Max, it would belong to both the Cat Class and the Animal superclass.
  - Strictly speaking, any Java object is polymorphic in nature in the sense that it would pass the IS-A test for itself and for the Object class. But it's a bit pedantic.

### Static Polymorphism (compile-time / static binding)
- Achieved via method overloading (several methods of the same name, but having different types/order/number of parameters)
- At compile-time, Java will distinguish these polymorphic methods by checking the method signature (the method name and the number and types of its parameters)

### Dynamic Polymorphism (runtime / dynamic binding)
- Achieved via method overriding, which is when a subclass method overrides its parent class's method of the same name.
- The method to call is determined at runtime, hence its name of dynamic binding.

###
