import random
class RandomizedSet:

    def __init__(self):
        # So the dictionary values are the indices in which they are located at
        # in the nums list.
        self.dict = {}
        self.nums = []

    def insert(self, val: int) -> bool:
        if val not in self.dict:
            self.nums += val
            self.dict[val] = len(self.nums) - 1
            return True
        return False

    def remove(self, val: int) -> bool:
        # In order to delete from the list in constant time, we cannot rely
        # upon built-in methods.
        if val in self.dict:
            last = self.nums[-1]
            index = self.dict[val]
            # We replace val with the last value of the list, then
            # we pop the last value because it is now a duplicate entry
            self.nums[index] = last
            self.nums.pop()
            # For the dictionary entry, we just need to point dict[last]
            # to its new list index coordinate and directly delete self.dict[val]
            self.dict[last] = index
            del self.dict[val]
            return True
        return False

    def getRandom(self) -> int:
        # Need to perform random.choice on a list for it to be done in
        # constant time.
        return random.choice(self.nums)

# Your RandomizedSet object will be instantiated and called as such:
# obj = RandomizedSet()
# param_1 = obj.insert(val)
# param_2 = obj.remove(val)
# param_3 = obj.getRandom()
