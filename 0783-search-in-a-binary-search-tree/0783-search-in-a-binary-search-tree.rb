# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @param {Integer} val
# @return {TreeNode}
def search_bst(root, val)
    return nil if root.nil? 
    curr = root 

    while(curr != nil) do 
        return curr if curr.val == val

        if val < (curr.val)
            curr = curr.left
        else
            curr = curr.right 
        end 

    end 

    return nil 
end