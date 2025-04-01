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
# @return {Integer[]}
def inorder_traversal(root)
    res = []

    inorder(root, res)

    return res 
end

def inorder(node, res)
    return if node.nil? 
    
    if !node.left.nil?
        inorder(node.left, res)
    end 

    res << node.val 

    if !node.right.nil? 
        inorder(node.right, res)
    end 
end 