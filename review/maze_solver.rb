# Given a maze of x rows and y columns, return the number of valid paths
# to the exit. You start in the upper left Maze[0][0] and the exit is
# on the bottom right corner Maze[x][y].

def count_valid_paths(maze, row = 0, col = 0)

  p [row, col]
  unless row == 0 && col == 0
    return 0 if invalid_move?(maze, row, col)
    return 1 if at_exit?(maze, row, col)
  end
  count_valid_paths(maze, row + 1, col) + count_valid_paths(maze, row, col + 1)
end

def invalid_move?(maze, row, col)
  return true if row >= maze.length || col >= maze[0].length || maze[row][col].nil?
  false
end

def at_exit?(maze, row, col)
  return true if maze[row][col] == 1
end

a = [ [0, 0, 0], [0, nil, 0], [0, 0, 1]]
p count_valid_paths(a)
