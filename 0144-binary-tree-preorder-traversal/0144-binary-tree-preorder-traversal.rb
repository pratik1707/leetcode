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
def preorder_traversal(root)
    res = []

    preorder(root, res)

    return res 
end

def preorder(node, res)
    return if node.nil? 
    
    res << node.val 

    if !node.left.nil?
        preorder(node.left, res)
    end     

    if !node.right.nil? 
        preorder(node.right, res)
    end 
     
end