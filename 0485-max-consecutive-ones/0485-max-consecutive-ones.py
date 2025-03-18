class Solution:
    def findMaxConsecutiveOnes(self, nums: List[int]) -> int:
        result = 0 
        count = 0 

        for i in range(len(nums)):            
            if nums[i] == 1:
                count += 1
                result = max(result, count)
            else:
                count = 0 

        return result 

        