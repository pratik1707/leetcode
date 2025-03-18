class Solution:
    def longestNiceSubarray(self, nums: List[int]) -> int:
        result = 1 
        # 011 & 100 = 0
        # [1,3,8,48,10]
        # 000001   000011   001000   110000  001010
        # when 0 then do an or to the mask so that it will append the number bits
        
        n = len(nums)
        count = 1 
        mask = 0 
        i = 0

        while(i < n):
            j = i + 1
            mask = nums[i]
            while(j < n and (mask & nums[j] == 0)):                               
                result = max(result, j - i +1)
                mask |= nums[j]
                j += 1 

            i += 1
                

        return result 


        