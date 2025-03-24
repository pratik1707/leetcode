class Solution:
    def binary_search(self, nums, target):
        n = len(nums)
        print(nums)
        left = 0 
        right = n-1        
        
        while(left <= right):
            mid = left + (right - left)//2

            if nums[mid] == target:
                return mid 
            elif nums[mid] < target:
                left = mid + 1
            else:
                right = mid - 1 

        return None 

    def search(self, nums: List[int], target: int) -> int:
        
        n = len(nums)
        left = 0 
        right = n-1
        
        while(left <= right):
            mid = left + (right - left)//2

            if nums[mid] > nums[-1]:
                left = mid + 1
            else:
                right = mid - 1 

        

        val1 = self.binary_search(nums[0:left], target)

        if val1 == 0 or val1:
            return val1

        val2 = self.binary_search(nums[left:n], target)
        
        if val2 == 0 or val2:
            return (left+val2)

        return -1 
