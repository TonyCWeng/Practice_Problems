// Array.prototype.reduce takes in two arguments: a function to perform ("reduce")
// and an initial value that will accumulate as it iterates through.
// The first argument can be thought of as the "reducer"

let arr = ["P", "l", "e", "t", "o", "r"];
let stringTogether = arr.reduce( (res, letter) => res + letter, '');
console.log(stringTogether);

// React reducers can be thought of as a similar function. They take in
// an initial state and an action and return a newState to replace the
// the initial state.
