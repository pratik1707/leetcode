# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, x):
#         self.val = x
#         self.next = None

class Solution:
    def detectCycle(self, head: Optional[ListNode]) -> Optional[ListNode]:
        node_map = {}
        curr = head 
        pos = 0 

        while(curr):
            if curr in node_map and node_map[curr] == curr:
                return curr 
            node_map[curr] = curr
            
            curr = curr.next 
            

        return None 
        