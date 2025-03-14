class Solution:
    def can_divide(self, count, candies):
        # 2 
        
        total_kids = 0 
        for i in range(len(candies)):
            total_kids += candies[i]//count             
        
        return total_kids

    def maximumCandies(self, candies: List[int], k: int) -> int:
        total = sum(candies)
        n = len(candies)

        left = 1
        right = max(candies)    
        result = 0         

        while(left <= right):
            mid = left + (right - left)//2          

            if self.can_divide(mid, candies) >= k:      
                result = mid                       
                left = mid + 1
            else:                
                right = mid - 1 

        return result    
        