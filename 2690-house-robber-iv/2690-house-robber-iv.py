class Solution:
    def can_rob(self, nums, val, k):
        index = 0 
        count = 0 

        while(index < len(nums)):
            if nums[index] <= val:
                count += 1
                index += 2
            else:
                index += 1
        
        return count >= k


    def minCapability(self, nums: List[int], k: int) -> int:
        low = 1
        high = max(nums)
        n = len(nums)

        ans = None 

        while(low <= high):
            mid = (low + high)//2 

            if self.can_rob(nums, mid, k):
                ans = mid
                high = mid - 1
            else:
                low = mid + 1
        
        return ans 

        