# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def lists_helper(self, start, end, lists):

        if start >= end:
            return lists[start]

        mid = (start + end)//2

        l1 = self.lists_helper(start, mid, lists)

        l2 = self.lists_helper(mid + 1, end, lists)

        l3 = ListNode(-1)

        curr = l3 

        while(l1 and l2):
            if l1.val <= l2.val:
                node = ListNode(l1.val)
                l1 = l1.next 
                curr.next = node 
                curr = curr.next 
            else:
                node = ListNode(l2.val)
                l2 = l2.next 
                curr.next = node 
                curr = curr.next 

        while(l1):
            node = ListNode(l1.val)
            l1 = l1.next 
            curr.next = node 
            curr = curr.next 

        while(l2):
            node = ListNode(l2.val)
            l2 = l2.next 
            curr.next = node 
            curr = curr.next 

        return l3.next 


    def mergeKLists(self, lists: List[Optional[ListNode]]) -> Optional[ListNode]:
        if not lists:
            return None 

        n = len(lists)

        return self.lists_helper(0, n-1, lists)
        