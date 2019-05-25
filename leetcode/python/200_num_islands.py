class Solution:
    def numIslands(self, grid):
        # visited = [[False for _ in range(grid[0])] for _ in range(grid)]
        if not grid:
            return 0
        count = 0
        row_len, col_len = len(grid), len(grid[0])

        def dfs(row, col):
            if not (0 <= row < row_len) or not (0 <= col < col_len) or grid[row][col] == '0':
                return
            grid[row][col] = '0'
            dfs(row + 1, col)
            dfs(row - 1, col)
            dfs(row, col + 1)
            dfs(row, col - 1)

        for row in range(row_len):
            for col in range(col_len):
                if grid[row][col] == '1':
                    count += 1
                    dfs(row, col)
        return count

# We check each element in the nested islands grid for land ('1').
# Upon finding land, we do a depth first search where we first change the value
# of the element to '0' so that we do not double-count islands already found before
# searching its immediate surroundings for other '1's as any 1's chained toegether
# represent a single island.