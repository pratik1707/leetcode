class Solution:
    def subset_helper(self, nums, i, slate, res):        
        if i == len(nums):
            res.append(slate[:])
            return      
        
        count = 1
        j = i+1

        while(j < len(nums) and nums[j] == nums[i]):
            count += 1
            j += 1
        

        for _ in range(count):
            slate.append(nums[i])
            self.subset_helper(nums,i+count, slate, res)

        for _ in range(count):
            slate.pop()         

        self.subset_helper(nums,i+count, slate, res)


    def subsetsWithDup(self, nums: List[int]) -> List[List[int]]:
        nums.sort()

        res = []
        print('aaaaa')

        self.subset_helper(nums,0, [], res)

        return res 
        