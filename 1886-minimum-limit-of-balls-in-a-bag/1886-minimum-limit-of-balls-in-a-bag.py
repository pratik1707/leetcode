class Solution:
    def can_fill_bag(self, val, maxOperations, nums):
        count = 0 
        for num in nums:
            if num > val:
                count += (math.ceil(num / val) - 1)
        return count 

    def minimumSize(self, nums: List[int], maxOperations: int) -> int:
        left = 1
        right = max(nums)
        n = len(nums)
        ans = None 

        while(left <= right):
            mid = (left + right)//2 
            count = self.can_fill_bag(mid, maxOperations, nums)
            if count <= maxOperations:
                ans = mid 
                right = mid - 1
            else:
                left = mid + 1

        return ans 

        