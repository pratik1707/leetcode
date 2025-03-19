class Solution:
    def minOperations(self, nums: List[int]) -> int:
        count = 0 
        n = len(nums)

        for i in range(n-2):
            if nums[i] == 0:
                j = i 
                while(j <= i+2):
                    nums[j] = nums[j] ^ 1
                    j += 1
                count += 1

        if nums[-1] == 0 or nums[-2] == 0:
            return -1 
            
        return count 




        

        