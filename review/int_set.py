class IntSet:
    def __init__(self, buckets = 20):
        # buckets is an array containing x empty arrays.
        self.store = [[] for x in range(buckets)] 
    
    def insert(self, num):
        if not self.include(num):
            self.store[num % 20].append(num)
            return True
        return False

    def remove(self, num):
        if self.include(num):
            self.store[num % 20].remove(num)
            return True
        return False

    def include(self, num):
        return num in self.store[num % 20]

    def num_buckets(self):
        return len(self.store)

int_set = IntSet()
int_set.insert(1)
int_set.insert(14)
int_set.insert(15)
int_set.insert(11)
int_set.insert(22)
print(int_set.include(22))
