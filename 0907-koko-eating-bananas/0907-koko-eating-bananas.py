class Solution:
    def can_eat_bananas(self, mid, piles, h):
        count = 0 
        
        for pile in piles:
            if mid >= pile:
                count += 1
            else:
                #print(f"ceil pile = {pile}, mid={mid} == {math.ceil(pile/mid)}")
                count += math.ceil(pile/mid)

        return count 

    def minEatingSpeed(self, piles: List[int], h: int) -> int:
        n = len(piles)
        left = 1
        right = max(piles)
        ans  = None 

        while(left <= right):
            mid = (left + right)//2 
            count = self.can_eat_bananas(mid, piles, h)
            if count <= h:
                ans = mid
                right = mid - 1
            else:
                left = mid + 1

        return ans 
        