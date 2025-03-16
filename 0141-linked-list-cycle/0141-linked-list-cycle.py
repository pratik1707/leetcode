# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, x):
#         self.val = x
#         self.next = None

class Solution:
    def hasCycle(self, head: Optional[ListNode]) -> bool:
        if not head or not head.next:
            return False         

        fast = head.next
        slow = head

        if not fast.next:
            return False 

        while(fast and fast.next and slow):
            if fast == slow:
                return True 
            fast = fast.next.next
            slow = slow.next 

        return False 
        