class Solution:
    def removeDuplicates(self, nums: List[int]) -> int:
        nums_map = {}
        k = 0 
        index = 1 # non - decreasing 

        for i in range(1, len(nums)):
            if nums[i-1] != nums[i]:
                nums[index] = nums[i]
                index += 1 

        return index 
        
        