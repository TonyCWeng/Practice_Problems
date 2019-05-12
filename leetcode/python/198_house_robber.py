class Solution:
    def rob(self, numbers):
        even, odd = 0, 0
        for idx, x in enumerate(numbers):
            if idx % 2 == 0:
                even = max(odd, even + x)
            else:
                odd = max(odd + x, even)
        return max(even, odd)

# Alternate solution found on leetcode
# Very fancy, but it doesn't appear to actually be more performant.
# I originally wanted to do something like this, but I slipped up
# on the return statement as swapping prev and current means that
# we return prev at the end.
class Solution2:
    def rob(self, numbers):
        if not numbers:
            return 0
        if len(numbers)  < 2:
            return max(numbers)
        prev, current = 0, 0
        for x in numbers:
            current = max(current + x, prev)
            current, prev = prev, current
        return prev
