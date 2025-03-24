class Solution:
    def singleNonDuplicate(self, nums: List[int]) -> int:
        n = len(nums)
        left = 0 
        right = n-1 

        if n == 1:
            return nums[0]

        while(left <= right):
            mid = left + (right - left)//2
            
            if mid == 0 and nums[mid] != nums[mid+1]:
                return nums[mid]
            if mid == n-1 and nums[mid] != nums[mid-1]:
                return nums[mid]
            if mid > 0 and nums[mid] != nums[mid-1] and mid < n and nums[mid] != nums[mid+1]:
                return nums[mid]

            if mid % 2 == 0:
                if mid == n-1 or nums[mid] != nums[mid+1]:
                    right = mid - 1
                else:
                    left = mid + 1
            else:
                if mid == n-1 or nums[mid] == nums[mid+1]:
                    right = mid - 1
                else:
                    left = mid + 1


        