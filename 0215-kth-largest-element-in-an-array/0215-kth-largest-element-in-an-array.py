class Solution:
    def findKthLargest(self, nums: List[int], k: int) -> int:
        n = len(nums)
        count = 0 

        nums = [-1 * num for num in nums]

        heapq.heapify(nums)

        #print(nums)

        while(count < k):            
            item = heapq.heappop(nums)            
            count += 1 

        
        return -1 * item
        