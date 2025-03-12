class Solution:
    def count_negative(self, arr):
        low = 0 
        arr = arr[::-1]
        high = len(arr) - 1
        index = len(arr)

        while(low <= high):
            mid = (low + high)//2
            if arr[mid] < 0:
                low = mid + 1
            else:
                index = mid 
                high = mid - 1

        return index 

    def countNegatives(self, grid: List[List[int]]) -> int:
        neg_count = 0 

        m = len(grid)
        n = len(grid[0])

        for i in range(m):
            neg_count += self.count_negative(grid[i])

        return neg_count 
        