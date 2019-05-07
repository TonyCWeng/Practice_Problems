# Single line comments denoted by #

''' Multi-line comments are denoted by tripe quotation marks, either double or single
quotation marks will do.'''

# Slicing in Python [start_idx:end_idx], where the end_idx is not inclusive.
# Can be done to both strings and arrays.
arr = [11,2,41,50,78,44]
print(arr[0:2]) # This would print [1,2], leaving out arr[2] which is 3

# If we do not put a start index, then slice will return everything from the
# 0th index up until the end_idx.

print(arr[:2])
print(arr[0:2] == arr[:2]) # Will return True

# If we do not specify an ending index, then the slice operation will return
# everything from the start index to the end of the array or string.
print(arr[2:])

# sort works the same as in ruby, but does not return the sorted array

arr.sort()
print(arr)

# sort() has two optional properties, key and reverse. key can take in a function to sort
# them with (such as len()), whereas reverse can be set to true to reverse sort
# the array in question.

arr.sort(reverse=True)
print(arr)

# sorted(), however, would return a new array, based off the original array and sorted.
# As such, it does not mutate the original array.
print(sorted(arr))

