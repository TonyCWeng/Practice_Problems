def count_islands(matrix)
  # matrix of n x m size
  rows = matrix.length
  cols = matrix[0].length
  visited = Array.new(rows) { Array.new(cols) }
  # remember every place we visited

  count = 0
  (0...rows).each do |row|
    (0...cols).each do |col|
      # If the location is True and we've yet to visit it,
      # then check the plot of land to see if any of its neighbors
      # is land to determine if it is an island.
      if matrix[row][col] && !visited[row][col]
        visit_island(row, col, visited, matrix)
        count += 1
      end
    end
  end
  count
end

def visit_island(row, col, visited, matrix)
  # [x - 1, y - 1], [x - 1, y], [x - 1, y + 1]
  # [x, y - 1]    ,   SELF    , [x, y + 1]
  # [x + 1, y - 1], [x + 1, y], [x + 1, y + 1]
  neighbor_row = [-1, -1, -1, 0, 0, 1, 1, 1]
  neighbor_col = [-1, 0, 1, -1, 1, -1, 0, 1]

  visited[row][col] = true
  # visit_island is a recursive method made to find all Trues attached to the first
  # true value found. We make note of each part of the island found and mark them
  # as true, so as to prevent counting each part of the island as being a separate island
  (0...8).each do |idx|
    if is_island(row + neighbor_row[idx], col + neighbor_col[idx], visited, matrix)
      visit_island(row + neighbor_row[idx], col + neighbor_col[idx], visited, matrix)
    end
  end

end

def is_island(row, col, visited, matrix)
  # validates if the rows and cols of neighboring islands are in-bounds
  # validates that neighbors weren't already visted and that it is land.
  return (row >= 0 && row < matrix.length) && (col >= 0 && col < matrix[0].length) && (matrix[row][col] && !visited[row][col])
end
