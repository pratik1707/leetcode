# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def rotateRight(self, head: Optional[ListNode], k: int) -> Optional[ListNode]:
        if not head:
            return head 

        if not head.next:
            return head 

        length = 0 

        curr = head 
        while(curr):
            length += 1
            curr = curr.next 

        if k > length:
            k = k % length


        for _ in range(k):
            prev = None 
            curr = head 
            while(curr.next):
                prev = curr 
                curr = curr.next 
            
            
            prev.next = None 
            curr.next = head 
            head = curr 
            #print(head)

        return head 
        
        