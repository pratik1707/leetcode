class Solution:
    def maxSum(self, grid: List[List[int]], limits: List[int], k: int) -> int:
        new_array = []      
        
        grid = [sorted(row) for row in grid]
        
        heapq.heapify(new_array)
        
        for i in range(len(grid)):
            row = grid[i]

            for _ in range(limits[i]):
                val = row.pop()
                heapq.heappush(new_array, -1*val)

        s = 0 
        
        for _ in range(k):
            s += -1*heapq.heappop(new_array)

        return s 

       


            

            
