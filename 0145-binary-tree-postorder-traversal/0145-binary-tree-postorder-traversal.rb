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
def postorder_traversal(root)
    res = []

    postorder(root, res)

    return res 
end

def postorder(node, res)
    return if node.nil?     

    if !node.left.nil?
        postorder(node.left, res)
    end     

    if !node.right.nil? 
        postorder(node.right, res)
    end 


    res << node.val 
     
end