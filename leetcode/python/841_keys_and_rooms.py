class Solution:
    def canVisitAllRooms(self, rooms):
        # Seems to be the convention of creating a list of x-size and same value.
        # We use the visited array to cache the rooms that we've already visited.
        visited = [False] * len(rooms)
        self.dfs(rooms, visited, 0)
        return all(x == True for x in visited)

    def dfs(self, rooms, visited, index):
        visited[index] = True
        if rooms[index]:
            # Try each key inside the room
            for key in rooms[index]:
                # Skip rooms that we've already visited.
                if visited[key]:
                    continue
                self.dfs(rooms, visited, key)
        else:
            return None
