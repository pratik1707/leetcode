class Solution:    

    def longestPalindromicSubsequence(self, s: str, k: int) -> int:        
        def calculate_cost(s, i, j):
            diff1 = abs(ord(s[i]) - ord(s[j])) 
            diff2 = 26 - abs(ord(s[i]) - ord(s[j])) 

            return min(diff1, diff2)
        
        def get_strings_max(s, i, j, k):
            if i > j:
                return 0 
            
            if i == j:
                return 1 

            if memo[i][j][k] != -1:
                return memo[i][j][k]
            
            x = 0 

            if s[i] == s[j]:
                x = 2 + get_strings_max(s, i+1, j-1, k)

            cost = calculate_cost(s, i, j)
            
            if cost <= k:
                x = max(x, 2 + get_strings_max(s, i+1, j-1, k-cost))

            x = max(x, get_strings_max(s, i+1, j, k), get_strings_max(s, i, j-1, k))

            memo[i][j][k] = x

            return memo[i][j][k]

        memo = [[[-1 for _ in range(k+1)] for _ in range(len(s))]for _ in range(len(s))]
        return get_strings_max(s, 0, len(s)-1, k)



        