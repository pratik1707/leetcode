class Solution:
    def c_helper(self, candidates, i, slate, result,n, target):
        if target == 0:
            result.append(slate[:])
            return 
        elif target < 0 or i == n:
            return 

        count = 1
        for j in range(i+1, n):
            if candidates[j] == candidates[i]:
                count += 1
            else:
                break 
        
        for j in range(1, count+1):
            slate.append(candidates[i])
            self.c_helper(candidates, i + count, slate, result,n, target - (j*candidates[i]))

        for j in range(count):
            slate.pop()
        
        self.c_helper(candidates, i + count, slate, result,n, target)


    def combinationSum2(self, candidates: List[int], target: int) -> List[List[int]]:
        candidates.sort()

        n = len(candidates)

        res = []

        self.c_helper(candidates, 0, [], res, n, target)

        return res 


        