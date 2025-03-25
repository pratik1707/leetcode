class Solution:
    def topKFrequent(self, nums: List[int], k: int) -> List[int]:
        freq = Counter(nums)
        n = len(nums)
        result = []

        freq = [[-1*v, k] for k, v in freq.items()]
        
        heapq.heapify(freq)

        while(k > 0):
            result.append(heapq.heappop(freq)[1])
            k -= 1

        return result 

        

        
        