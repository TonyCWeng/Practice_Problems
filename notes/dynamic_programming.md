# Dynamic Programming
- Ordering computations in a way that avoids recalculating the same work over and over again.
- A good example would be something along the lines of the fibonacci sequence, which is a tree of subproblems.
- Memoization and Tabulation are the two main techniques used with Dynamic Programming.

## Memoization
- Compute all subproblems and cache the results. We call upon the cache for solutions when possible and otherwise solve the problem at hand and add the answer to the cache to avoid possibly recalculating it down the line.
