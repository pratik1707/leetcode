class Solution:
    def divideArray(self, nums: List[int]) -> bool:
        n = len(nums)

        freq = Counter(nums)

        for k, v in freq.items():
            if v % 2 != 0:
                return False 

        return True 
        