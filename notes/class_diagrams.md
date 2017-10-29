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
