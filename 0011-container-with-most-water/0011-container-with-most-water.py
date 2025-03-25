class Solution:
    def maxArea(self, height: List[int]) -> int:
        n = len(height)
        result = 0 

        i = 0 
        j = n-1

        while(i < j):
            product = min(height[i], height[j]) * (j - i)
            result = max(product, result)

            if height[i] < height[j]:
                i += 1
            else:
                j -= 1
        
        return result

        