def search(numbers, target):
        if not numbers:
            return -1
        left = 0
        right = len(numbers) - 1
        midpoint = (left + right) // 2
        if numbers[midpoint] > target:
            return search(numbers[:midpoint], target)
        elif numbers[midpoint] < target:
            right = search(numbers[midpoint+1:], target)
            return -1 if right == -1 else midpoint + 1 + right
        else:
            return midpoint

print(search([1,2,3,4,5,6,7,8], 10))


class Solution:
    def search(self, nums, target):
        left = 0
        right = len(nums) - 1
        # As we calculate the midpoint using integer division, the last value
        # in the list is calculated only when left == right.
        while left <= right:
            midpoint = (left + right) // 2
            if nums[midpoint] > target:
                right = midpoint - 1
            elif nums[midpoint] < target:
                left = midpoint + 1
            else:
                return midpoint
        return -1
