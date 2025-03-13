class Solution:
    def can_transform(self, nums, queries, end):
        n = len(nums)
        diff_array = [0] * (n + 1 )

        for index in range(end):
            left, right, val = queries[index]
            diff_array[left] += val 
            diff_array[right + 1] -= val 

        total_sum = 0 

        for i in range(n):
            total_sum += diff_array[i]

            if total_sum < nums[i]:
                return False 
        
        return True 



    def minZeroArray(self, nums: List[int], queries: List[List[int]]) -> int:
        # For this problem the brute force approach will result in TLE
        # We need to compute difference array 
        # difference array is computed by following : 
        # at every range left, right+1
        # add the val to difference array and subtract the value at right +1 index 
        # for eg : left = 0, right = 4, val = 2  => diff array => [0,0,0,0,0,0] => [2, 0, 0, 0, 0, -2]
        # need to do this for all ranges 
        # after doing so if the prefix sum of difference array at every index is more than num 
        # then it will result in 0 

        n = len(queries)
        left = 0 
        right = n
        ans = -1 

        while(left <= right):
            mid = (left + right)//2 

            if self.can_transform(nums, queries, mid):     
                ans = mid            
                right = mid - 1
            else:
                left = mid + 1 

        return ans   

        
        
        