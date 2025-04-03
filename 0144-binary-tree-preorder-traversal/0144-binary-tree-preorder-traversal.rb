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
    curr = root 
    res = []

    while(curr != nil) do 
        if curr.left.nil?
            res << curr.val 
            curr = curr.right 
        else
            pre = curr.left 

            while(pre.right != nil and pre.right != curr) do 
                pre = pre.right 
            end 

            if pre.right.nil?
                pre.right = curr 
                res << curr.val 
                curr = curr.left                 
            else
                pre.right = nil 
                curr = curr.right
            end 
        end 
    end 

    return res 
#     res = []

#     preorder(root, res)

#     return res 
# end

# def preorder(node, res)
#     return if node.nil? 
    
#     res << node.val 

#     if !node.left.nil?
#         preorder(node.left, res)
#     end     

#     if !node.right.nil? 
#         preorder(node.right, res)
#     end 
     
end