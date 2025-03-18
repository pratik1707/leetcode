# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def reverse_k_nodes(self, head, k):
        prev = None 
        curr = head 

        while(k > 0):
            # first time its 1
            # second time 2 -> 1
            # then 
            next_node = curr.next 
            curr.next = prev 
            prev = curr
            curr = next_node 
            k -= 1 
        #print(head)
        return prev 

    def reverseKGroup(self, head: Optional[ListNode], k: int) -> Optional[ListNode]:
        count = 0 
        # we will make recursive calls to the function
        # if count becomes equal to k , if not then no call and the remaining will 
        # attach as is 
        curr = head 
        rev_head = None 

        while(count < k and curr):
            count += 1 
            curr = curr.next 

        if count == k:
            rev_head = self.reverse_k_nodes(head, k)
            #print(rev_head)
            #3print(self.reverseKGroup(curr, k))
            head.next = self.reverseKGroup(curr, k)
            #print(head)
            return rev_head

        return head  
        