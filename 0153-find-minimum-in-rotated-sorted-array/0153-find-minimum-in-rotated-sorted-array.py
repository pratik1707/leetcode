class Solution:
    def findMin(self, nums: List[int]) -> int:
        n = len(nums)
        left = 0 
        right = n - 1 
        first = nums[0]

        if n == 1:
            return nums[0]

        if nums[left] < nums[right]:
            return nums[0]

        while(left <= right):
            mid = left + (right - left)//2 

            if mid + 1 < n and nums[mid+1] < nums[mid]:
                return nums[mid + 1]

            if mid-1 >=0 and nums[mid] < nums[mid-1] and mid+1 < n and nums[mid] < nums[mid+1]:
                return nums[mid]
            
            if nums[mid] > first:
                left = mid + 1
            else:
                right = mid - 1

        return nums[left]
        