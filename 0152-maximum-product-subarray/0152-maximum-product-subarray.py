class Solution:
    def maxProduct(self, nums: List[int]) -> int:
        n = len(nums)
        min_val = nums[0]
        max_val = nums[0]
        result = nums[0]

        for i in range(1, n):
            product = (nums[i], min_val * nums[i], max_val * nums[i])
            min_val = min(product)
            max_val = max(product)
            result = max(result, max_val)

        return result 

        