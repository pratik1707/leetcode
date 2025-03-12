class Solution:
    def get_lower_bound(self, nums):
        left = 0 
        right = len(nums) - 1
        index = len(nums) 

        while(left <= right):
            mid = (left + right)//2 

            if nums[mid] < 0:                
                left = mid + 1
            else:
                index = mid
                right = mid - 1         
        
        return index 

    def get_upper_bound(self, nums):
        left = 0 
        right = len(nums) - 1
        index = len(nums) 

        while(left <= right):
            mid = (left + right)//2 

            if nums[mid] <= 0:                
                left = mid + 1
            else:
                index = mid
                right = mid - 1 
        
        return index 

    def maximumCount(self, nums: List[int]) -> int:
        pos_count = 0 
        neg_count = 0 

        n = len(nums)

        index_lower_bound = self.get_lower_bound(nums)

        index_upper_bound = self.get_upper_bound(nums)
        
        return max(index_lower_bound , n - index_upper_bound)
        