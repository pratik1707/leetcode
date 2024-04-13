# https://leetcode.com/problems/maximal-rectangle/description/?envType=daily-question&envId=2024-04-13

class Solution:
    def maximalRectangle(self, matrix: List[List[str]]) -> int:
        m = len(matrix)
        n = len(matrix[0])

        max_width = [[0] * len(matrix[0]) for _ in range(len(matrix))]
        maxarea = 0 
        
        for i in range(len(matrix)):
            for j in range(len(matrix[0])):
                if matrix[i][j] == '0': continue

                if j > 0:
                    width = max_width[i][j] = max_width[i][j-1] + int(matrix[i][j])
                else:
                    width = max_width[i][j] = int(matrix[i][j])


                # compute the maximum area rectangle with a lower right corner at [i, j]
                for k in range(i, -1, -1):
                    width = min(width, max_width[k][j])
                    maxarea = max(maxarea, width * (i-k+1))       
        
        return maxarea 
