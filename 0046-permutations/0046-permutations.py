class Solution:
    def p_helper(self, nums, i, slate, res, n):
        if i == n:
            res.append(slate[:])
            return 

        for j in range(len(nums)):
            slate.append(nums[j])            
            self.p_helper(nums[0:j] + nums[j+1:], i+1, slate, res, n)
            slate.pop()


    def permute(self, nums: List[int]) -> List[List[int]]:
        res = []

        n = len(nums)

        self.p_helper(nums, 0, [], res, n)

        return res 
        