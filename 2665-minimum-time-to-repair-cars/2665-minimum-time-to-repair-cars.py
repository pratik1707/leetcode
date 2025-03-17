class Solution:
    def can_repair(self, mid, ranks, cars):
        total = 0

        for rank in ranks:
            total += math.floor(math.sqrt(mid / rank))

        return cars <= total 

    def repairCars(self, ranks: List[int], cars: int) -> int:
        min_rank = min(ranks)
        right = min_rank * (cars)**2 
        left = 1 
        ans = None 

        # we will use different mid values
        # and keep reducing if it passes the condition 
        # for eg in the case ranks = [4,2,3,1], cars = 10
        # right = 100
        #left = 1, mid = 50 # trying with mid = 50
        # how to calculate number of mins 
        # we need to test with the mid so r * n^2 <= mid
        # n^2 <= mid/r => n <= math.sqrt(mid/r)
        # so we need to use this for each case and check if it works

        while(left <= right):
            mid = (left + right)//2 

            if self.can_repair(mid, ranks, cars):
                ans = mid
                right = mid - 1
            else:
                left = mid + 1

        return ans 

        
        