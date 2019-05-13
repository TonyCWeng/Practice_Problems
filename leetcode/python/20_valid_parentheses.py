class Solution:
    def isValid(self, s):
        valid_pairs = {'(': ')', '[': ']', '{': '}'}
        lefts = []
        for char in s:
            if char in valid_pairs.keys():
                lefts.append(char)
            elif lefts and char == valid_pairs[lefts.pop()]:
                continue
            else:
                return False
        if lefts:
            return False
        else:
            return True

# Ternary return: return True if not lefts else False
# return len(lefts) == 0 isn't Pythonic, apparently. 
# Otherwise, I would have gone with that.