class Solution:
    def can_divide(self, count, candies, k):
        # 2 
        
        total_kids = 0 
        for i in range(len(candies)):
            total_kids += candies[i]//count             
        
        if total_kids >= k:
            return True 
            
        return False 

    def maximumCandies(self, candies: List[int], k: int) -> int:
        total = sum(candies)
        n = len(candies)

        if total < k:
            return 0 

        left = 1
        right = max(candies)    
        result = 0         

        while(left <= right):
            mid = (left + right) //2             

            if self.can_divide(mid, candies, k):      
                result = mid                       
                left = mid + 1
            else:                
                right = mid - 1 

        return result    
        