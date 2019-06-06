class MaxIntSet:
    def __init__(self, max):
        self.max = max
        self.store = self.createStore(max)
    
    def insert(self, num):
        if self.is_valid(num) and not self.store[num]:
            self.store[num] = True
            return True
        else:
            return False
    
    def remove(self, num):
        if self.is_valid(num) and self.store[num]:
            self.store[num] = False
            return True
        return False

    def include(self, num):
        return self.store[num]

    def is_valid(self, num):
        return (0 <= num <= max)
    
    def createStore(self, max):
        store = []
        for i in range(max + 1):
            store.append(i)
        return store
