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
    # morris traversal 
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
                curr = curr.left 
            else
                pre.right = nil 
                res << curr.val 
                curr = curr.right 
            end 
        end 
    end 

    
    # stack = []
    # curr = root 
    # res = []

    # while(curr != nil or stack.size > 0) do 
    #     while(curr != nil) do 
    #         stack << curr 
    #         curr = curr.left
    #     end 
    #     curr = stack.pop
    #     res << curr.val  
        
    #     curr = curr.right
    # end 

    return res 
#     res = []

#     inorder(root, res)

#     return res 
# end

# def inorder(node, res)
#     return if node.nil? 
    
#     if !node.left.nil?
#         inorder(node.left, res)
#     end 

#     res << node.val 

#     if !node.right.nil? 
#         inorder(node.right, res)
#     end 
end 