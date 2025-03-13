# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def middleNode(self, head: Optional[ListNode]) -> Optional[ListNode]:
        n = 0 
        curr = head 

        while(curr):
            n += 1
            curr = curr.next 

        middle = (n//2) + 1

        curr = head 
        count = 0 

        while(curr):
            count += 1
            if count == middle:
                return curr 
            curr = curr.next 

        return None 

        