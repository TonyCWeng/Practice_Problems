class Solution:
    def canVisitAllRooms(self, rooms):
        visited = [False] * len(rooms)
        self.dfs(rooms, visited, 0)
        print(visited)
        return all(x == True for x in visited)

    def dfs(self, rooms, visited, index):
        visited[index] = True
        if rooms[index]:
            for key in rooms[index]:
                if visited[key]:
                    continue
                self.dfs(rooms, visited, key)
        else:
            return None
