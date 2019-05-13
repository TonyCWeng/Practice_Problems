# We can basically treat this problem as having two different arrays,
# where we exclude either the first (numbers[1:]) or last element (numbers[:-1])
# and then just run the formula from house_robber.py.
# If the array is empty (edge case), then we return 0.
# If the array has 3 or less elements, then we just return the largest
# of the three elements as we can only rob one house.

class Solution:
    def rob(self, numbers):
        if not numbers:
            return 0
        if len(numbers) <= 3:
            return max(numbers)

        first = self.rob_helper(numbers[1:])
        second = self.rob_helper(numbers[:-1])
        return max(first, second)

    def rob_helper(self, numbers):
        even, odd = 0, 0
        for idx in range(len(numbers)):
            if idx % 2 == 0:
                even = max(even + numbers[idx], odd)
            else:
                odd = max(odd + numbers[idx], even)
        return max(even, odd)
