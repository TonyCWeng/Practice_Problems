# We can basically treat this problem as having two different arrays,
# where we exclude either the first or last element and then just
# run the formula from house_robber.py. 
# If the array is empty (edge case), then we return 0.
# If the array has 3 or less elements, then we just return the largest
# of the three elements as we can only rob one house.

class Solution:
    def rob(self, nums: List[int]) -> int:
        if not nums:
            return 0
        if len(nums) <= 3:
            return max(nums)

        first = self.rob_helper(nums[1:])
        second = self.rob_helper(nums[:-1])
        return max(first, second)

    def rob_helper(self, nums):
        even, odd = 0, 0
        for idx in range(len(nums)):
            if idx % 2 == 0:
                even = max(even + nums[idx], odd)
            else:
                odd = max(odd + nums[idx], even)
        return max(even, odd)
