# example: number of islands is 3. Land is indicated by 1's and are considered
# to be linked if they are separated by either 1 row or 1 column only.
arr = [
  [1, 1, 1],
  [1, 0, 0],
  [0, 1, 0],
  [0, 1, 0],
  [0, 0, 1]
]


def num_of_islands(arr)
  return 0 if arr.empty? || arr[0].empty?
  island_count = 0

  arr.length.times do |row|
    arr[0].length.times do |col|
      if arr[row][col] == 1
        island_count += 1
        arr = explore_island(arr, row, col)
      end
    end
  end
  island_count
end

def explore_island(arr, row, col)
  # return if out of bounds or not an island
  if row < 0 || row >= arr.length || col < 0 || col >= arr[0].length || arr[row][col] == 0
    return
  end

  # set the island to 0 to make sure we do not double count the same island
  # down the line.
  # we attempt to explore each adjacent space if we encounter an island.
  arr[row][col] = 0
  explore_island(arr, row + 1, col)
  explore_island(arr, row - 1, col)
  explore_island(arr, row, col + 1)
  explore_island(arr, row, col - 1)
  arr
end

p num_of_islands(arr)
