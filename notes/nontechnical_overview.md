# MVC (Model-View-Controller)
- Design pattern (Ex. Rails)

- Model (information retrieval, edits/logic performed on)
- View (what the user interacts/sees)
- Controller (interface between model and view)

## REST
- Standardized operations (GET, POST, PATCH, EDIT, DELETE) yields predictable result.
- Server does not retain session info over multiple requests (data can be cached, however)

## Rake
- Carries out administrative tasks (display routes, migrate/seed database)

## JSX
- JS extension syntax, allows for use of HTML tags inside of JavaScript. Hence its use in React components.

## React Life Cycle Methods
- Behavior can be split to Mounting, Updating, Unmounting

### Mounting (Chronological Order)
- Constructor()
- ComponentWillMount(); Allow something to happen right before mounting
  - Occurs before render(), so no re-rendering will occur due to it.
- Render();
- ComponentDidMount(); invoked immediately after component mounts and after render().

### Updating
- ComponentWillReceiveProps(); compares this.props and nextProps to determine if the
component should re-render. Occurs before mounted component receives next props.
- ShouldComponentUpdate(); By default, returns true. If returns false, ComponentWillUpdate and ComponentDidUpdate will not invoke.
- render(); invoked if ComponentWillReceiveProps or ComponentDidUpdate are invoked.
- ComponentDidUpdate(); invoked after update occurs, not used for initial render.

### Unmounting
- ComponentWillUnmount(); invoked before component is unmounted and destroyed.
  - Utilized for Component clean-up (invalidate timers, cancel network requests, clear up DOM elements created by componentDidMount).

## Iteration vs Recursion
- Iteration makes use of loops to perform the same step over and over whereas in recursion, the recursive function makes a call to itself with changed inputs to repeat the process. Recursion has a drawback in depth, as it continues to draw up intermediate results on the stack as needed. Due to stack depth limitations, it is possible for one's program to stop functioning before ever reaching its solution.
