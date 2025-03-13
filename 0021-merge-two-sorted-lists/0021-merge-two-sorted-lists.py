# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def mergeTwoLists(self, list1: Optional[ListNode], list2: Optional[ListNode]) -> Optional[ListNode]:
        merged = ListNode(None)
        curr = merged

        l1 = list1
        l2 = list2 

        while(l1 or l2):
            if l1 and l2:
                if l1.val <= l2.val:
                    node = ListNode(l1.val)
                    curr.next = node 
                    l1 = l1.next 
                else:
                    node = ListNode(l2.val)
                    curr.next = node 
                    l2 = l2.next
            elif l1:
                node = ListNode(l1.val)
                curr.next = node 
                l1 = l1.next 
            elif l2:
                node = ListNode(l2.val)
                curr.next = node 
                l2 = l2.next 

            curr = curr.next 

        return merged.next 
        
        