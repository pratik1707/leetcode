"""
# Definition for a Node.
class Node:
    def __init__(self, x: int, next: 'Node' = None, random: 'Node' = None):
        self.val = int(x)
        self.next = next
        self.random = random
"""

class Solution:
    def copyRandomList(self, head: 'Optional[Node]') -> 'Optional[Node]':
        nodes_map = {}

        if not head:
            return None 

        curr = head 

        while(curr):
            nodes_map[curr] = Node(curr.val)
            curr = curr.next 

        curr = head 

        while(curr):            
            nodes_map[curr].next = nodes_map.get(curr.next)
                      
            nodes_map[curr].random = nodes_map.get(curr.random)
            curr = curr.next 

        return nodes_map[head]  
            