class Solution:
    def threeSumClosest(self, nums: List[int], target: int) -> int:
        nums.sort()
        i = 0
        closest_sum = float('inf')
        lowest = nums[0] + nums[1] + nums[2]
        greatest = nums[-1] + nums[-2] + nums[-3]
        # We return early if the lowest sum is already greater than our target value,
        # as the distance can only increase from here on out. Same goes for the
        # case where the greatest sum achieveable is dwarfed by the target value.
        if lowest > target:
            return lowest
        if greatest < target:
            return greatest

        # By sorting the array, we are given early exits and the ability to capture
        # two values in single loop. 
        for i in range(len(nums) - 2):
            left = i + 1
            right = len(nums) - 1
            while left < right:
                current_sum = nums[i] + nums[left] + nums[right]
                if current_sum < target:
                    # skip past duplicate values, then increment left by 1
                    while left < right and nums[left] == nums[left + 1]:
                        left += 1
                    left += 1
                elif current_sum > target:
                    # skip past duplicate values, then decrement right by 1.
                    while left < right and nums[right] == nums[right - 1]:
                        right -= 1
                    right -= 1
                else:
                    return current_sum
                # Set a new closest value if applicable.
                if abs(current_sum - target) < abs(closest_sum - target):
                    closest_sum = current_sum
        return closest_sum
