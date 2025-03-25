class MedianFinder:

    def __init__(self):
        self.min_heap = []
        self.max_heap = []


    def addNum(self, num: int) -> None:
        if (self.min_heap and self.min_heap[0] < num):
            heapq.heappush(self.min_heap, num)
        else:
            heapq.heappush(self.max_heap, -1*num)

        if len(self.min_heap) > len(self.max_heap) + 1:
            n1 = heapq.heappop(self.min_heap)
            heapq.heappush(self.max_heap, -1*n1)

        if len(self.max_heap) > len(self.min_heap) + 1:
            n2 = heapq.heappop(self.max_heap)
            heapq.heappush(self.min_heap, -1*n2)

        #print(self.min_heap)
        #print(self.max_heap)
        

    def findMedian(self) -> float:
        if len(self.min_heap) > len(self.max_heap):
            return self.min_heap[0]
        elif len(self.max_heap) > len(self.min_heap):
            return -1 * self.max_heap[0]
        else:
            return (self.min_heap[0] + -1 * self.max_heap[0])/2
        


# Your MedianFinder object will be instantiated and called as such:
# obj = MedianFinder()
# obj.addNum(num)
# param_2 = obj.findMedian()