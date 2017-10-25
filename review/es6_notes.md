## Promises
- Introduced in ES6, promises are a method of handling asynchronous functions.
- represent a value that we can handle in the future.
- 3 states a promise can be in: Pending, Fulfilled, Rejected.
  - A promise is pending until it its resolve or reject handler has been called.

## == vs ===
- == checks for value equivalency, but not type. === checks for value and type. Always default to ===.
  - "6" == 6 //returns true
  - "6" === 6 // returns false

## Set
- let s = new Set()
- s.add(4).add(5).add(6)

## Spread Operator (...args)
- used for array construction and destructuring.
  - Ex. function countArgs(...args) {
          return args.length;
  }
  In this example, it converts an uncertain number of arguments into an array.
- Ex. 2:
        [a, b, ...rest] = [10, 20, 30, 40, 50];
        console.log(a); // 10
        console.log(b); // 20
        console.log(rest); // [30, 40, 50]

({a, b, ...rest} = {a: 10, b: 20, c: 30, d: 40});
console.log(a); // 10
console.log(b); // 20
console.log(rest); //{c: 30, d: 40}
- a assigned to 10, b to 20, but rest is assigned to an object.
- spread 'expands' an array into its elements, while rest collects multiple elements and 'condenses' them into a single element.

## Constants (immutable variable)
- the variable itself is immutable and cannot be re-assigned to new content.  
- The object a constant references, however, is not immutable.
  - Ex. const nums = [1,2,3];
        numbers.push(4); // => [1,2,3,4]

## Closures
- nested functions that have access to their parent function's variables (arguments).
- usually a helper function defined within a main function.
- closures can use free variables without explicitly listing them as an argument.
