class Solution:
    def maxProfit(self, prices: List[int]) -> int:
        n = len(prices)
        min_price = float('inf')
        mp = 0 
        
        for i in range(n):
            min_price = min(prices[i], min_price)
            profit = prices[i] - min_price 
            mp = max(mp, profit)

        return mp 
        
        