class Solution:
    def maxSlidingWindow(self, nums: List[int], k: int) -> List[int]:
        result = []
        queue = deque()
        

        for i in range(len(nums)):
            while(queue and i-k >= queue[0]):
                queue.popleft()
           
            while(queue and nums[i] > nums[queue[-1]] ):                
                queue.pop()

            queue.append(i)

            if i >= k-1:
                result.append(nums[queue[0]])
            

        return result 

        