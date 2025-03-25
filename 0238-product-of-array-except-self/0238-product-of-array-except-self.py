class Solution:
    def productExceptSelf(self, nums: List[int]) -> List[int]:
        n = len(nums)
        total_product = 1
        count_0 = 0 
        zero_index = None 
        result = []

        for i in range(n):
            if nums[i] == 0:
                count_0 += 1
                zero_index = i 
            else:
                total_product *= nums[i]
        
        if count_0 > 1:
            return [0] * n 

        if count_0 == 1:
            result = [0] * n 
            result[zero_index] = total_product 
            return result 

        for i in range(n):
            result.append(total_product//nums[i])

        return result 



        


        