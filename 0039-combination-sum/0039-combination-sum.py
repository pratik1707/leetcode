class Solution:
    def subset_helper(self, nums, i, slate, res, target, n):
        #print(slate)
        if i == n and target == 0:
            res.append(list(slate))
            return 
        elif i == n  or target < 0:
            return 

        slate.append(nums[i])
        self.subset_helper(nums, i, slate, res, target - nums[i], n)
        slate.pop()

        self.subset_helper(nums, i+1, slate, res, target, n)

    def combinationSum(self, candidates: List[int], target: int) -> List[List[int]]:
        n = len(candidates)

        res = []

        self.subset_helper(candidates, 0, [], res, target, n)

        return res 

    
        