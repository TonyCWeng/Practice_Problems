class IntSet:
    def __init__(self, buckets = 20):
        # buckets is an array containing x empty arrays.
        self.buckets = [[] for x in range(buckets)] 
    