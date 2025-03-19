class Solution:
    def subset_helper(self, nums, i, slate, res):
        if i == len(nums):
            res.append(slate.copy())
            return 

        self.subset_helper(nums, i+1, slate, res)

        slate.append(nums[i])
        self.subset_helper(nums, i+1, slate, res)
        slate.pop()

        
    def subsets(self, nums: List[int]) -> List[List[int]]:
        n = len(nums)

        res = []

        self.subset_helper(nums, 0, [], res)

        return res 
        