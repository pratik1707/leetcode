# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} k
# @return {ListNode}
def reverse_k_group(head, k)
    count = 0 
    curr = head 

    while(count < k and curr != nil) do 
        count += 1
        curr = curr.next 
    end 

    if count == k
        reverse_head = reverse_linked_list(head, k)

        head.next = reverse_k_group(curr, k)

        return reverse_head
    end 

    return head 
end

# 1 -> 2 -> 3 
# 3 -> 2 -> 1

def reverse_linked_list(head, k)
    prev = nil 
    curr = head 

    while(k > 0) do 
        next_node = curr.next 
        curr.next = prev 
        prev = curr 

        curr = next_node  

        k -= 1
        
    end 

    return prev 
end 