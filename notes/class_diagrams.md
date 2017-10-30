## Class Diagram Basics
- Class: blueprint/template describing the type of object that it will create
- Class Diagram: describe classes and how they relate.
- Class consist of states (attributes/fields such as name/height/weight) and behaviors (methods: what the object can do and what can be done to the object)
- Abstraction: eliminate any details as possible until you have a blueprint that applies to all objects of your class. Ex. Would not have flight as an animal method as there are plenty of animals that cannot fly.
- Encapsulation: protect fields, do not allow outside sources or users to do something inappropriate such as putting down some scrambled characters for its weight.
  - Fields should be made private by default, and public methods to set/get their values.
  - For UML: a private name field looks like this - name : String
  - + setName(newName : String) : void (setters should not return a value)
  - a public method to retrieve this name: + getName() : String (+ to represent public, method name and parentheses (but no parameters needed for a getter), colon and return type.

### UML Class Item Visibility
- Public (+): Accessible to any and all classes.
- Protected (#): Class & Subclasses can call.
- Package/Default (~): Called by any class within the same package. Not used very often.
- Private (-): Class methods only. No subclasses
- Attributes should always be Private or Protected.

### Multiplicity
- rules on attributes (Ex. - favoriteNumbers: int[1..10] would suggest there being 1 to 10 different favorite numbers)
  - known range of args: [min..max]
  - Unknown number of args: * inside brackets
  - {unique}, {notUnique}
  - {readOnly}: cannot be changed
  - +owner: String {owner->notEmpty()}
  - +balance: Number {balance >= 0}
- Static Attribute (underlined): shared between all instances of a class.

### Constraints
- preconditions: must be true before a method is executed
- postconditions: must be true after a method is executed

### Class Dependence
- Avoid tightly coupled classes (change in one class forces changes in others).
- Dependency: when objects work briefly with another class's object. Relationship shown via one-way arrow. Often not explicitly shown
- Association: classes have a direct relationship with one another, but it is through some joins table rather than attributes directly on them linking one another.
- Aggregation: weak, uni-directional relationship. Ex. a man has an address, but both the address and the man are not dependent on one another. If the man moved away, the address would still exist. Not often shown.
- Composition: strong dependence, "part of" relationship. Ex. a heart is a part of a human. If we delete the record of a human, we would also delete the heart record.
- Inheritance/Generalization: ("is a" relationship) subclass inherits all of the attributes and methods of the superclass.

### Abstract Class Diagram
- Signified by class name being italicized
- Methods are defined on the abstract class, but implementation is left on the subclass side.

### Interfaces
- contain only abstract methods, attributes are either static or constants.
- use either ball notation or stereotyped (<< >>).
