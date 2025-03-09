class Solution:
    def numOfUnplacedFruits(self, fruits: List[int], baskets: List[int]) -> int:
        unplaced = 0 

        queue = deque()

        for basket in baskets:
            queue.append(basket)

        max_value = max(baskets)

        for fruit in fruits:
            if fruit > max_value:
                continue 

            res = []
            
            while(queue and queue[0] < fruit):
                res.append(queue.popleft())

            if queue:
                queue.popleft()

            while(res):
                queue.appendleft(res.pop())

        return len(queue)

        