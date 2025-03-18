class Solution:
    def __init__(self):
        self.result = set()

    def two_sum(self,nums, new_target, num):
        ptr1 = 0
        ptr2 = len(nums)-1
        ptrs_list = []

        while(ptr1 < ptr2):
            s = nums[ptr1] + nums[ptr2]
            if s == new_target:
                self.result.add((num, nums[ptr1], nums[ptr2]))
                ptr2 -= 1 
            elif s > new_target:
                ptr2 -= 1
            else:
                ptr1 += 1

            
                


    def threeSum(self, nums: List[int]) -> List[List[int]]:
        nums.sort()

        for i in range(len(nums)):
            num = nums[i]
            new_target = 0 - num 
            self.two_sum(nums[i+1:], new_target, num)
        
        return [list(item) for item in self.result] 
        