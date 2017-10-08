Memoization
- Optimization technique through caching previously computed results.
- Used when you wish to revisit computed values.
- Differs from dynamic programming, which is a technique for solving problems
recursively when the computations may overlap within subproblems?

* One could say that memoization is a method of implementing dynamic programming.
* The other method would be tabulation which is an iterative approach.
- We split the problem into sub problems and solve those portions.
- Main method calls on sub problems.

When should you memoize?

When you’ve got duplicated database calls (like current_user above)
When you’ve got expensive calculations
When you’ve got repeated calculations that don’t change
When shouldn’t you memoize?

Memoize can introduce some very subtle bugs that are hard to track down.
Memoization shouldn’t be used with methods that take parameters:
