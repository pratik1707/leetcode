class Solution:
    def maxSubArray(self, nums: List[int]) -> int:
        n = len(nums)
        result = nums[0]
        curr_sum = 0 

        for i in range(n):
            curr_sum = max(curr_sum + nums[i], nums[i])
            result = max(result, curr_sum)

        return result 

        