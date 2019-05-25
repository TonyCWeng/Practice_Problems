class Solution:
    def fib(self, N: int) -> int:
        fibs = [0, 1]
        if N < 2:
            return fibs[N]
        i = 2
        while i <= N:
            fibs.append(fibs[i-1] + fibs[i-2])
            i += 1
        return fibs[N]

class Solution2:
    def fib(self, n):
        if N == 0 or N == 1:
            return N
        first, second = 0, 1
        for _ in range(2, len(n) + 1):
            first, second = second, first + second
        return second
