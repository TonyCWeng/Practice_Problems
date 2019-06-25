# Design Pattern Questions

## Why are global variables and static objects evil?
- Global variables are variables that are accessible to the entire application.
- Static objects, in Java, are used to provide global access to methods or variables.
- Global state is considered "evil" because it makes the app's state unpredictable.
With Global state, your entire app has access to the state and so any given module
is capable of changing the global state.
- Readability is affected, as one will have to have a wider understanding of the code
base in order to ensure that they actually grasp what the code is doing.
