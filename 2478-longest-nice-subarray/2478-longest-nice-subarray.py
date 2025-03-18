class Solution:
    def longestNiceSubarray(self, nums: List[int]) -> int:
        result = 1 
        
        n = len(nums)
        count = 1 
        mask = 0 
        i = 0

        while(i < n):
            j = i + 1
            mask = nums[i]
            while(j < n and (mask & nums[j] == 0)):
                #print(nums[i]&nums[j])                
                result = max(result, j - i +1)
                mask |= nums[j]
                j += 1 

            i += 1
                

        return result 


        