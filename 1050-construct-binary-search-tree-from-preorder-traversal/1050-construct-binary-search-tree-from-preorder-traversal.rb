# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {Integer[]} preorder
# @return {TreeNode}
def bst_from_preorder(preorder)
    inorder = preorder.sort 

    @preorder_queue = Queue.new 

    map = {}

    for i in (0...inorder.length) do 
        map[inorder[i]] = i 
    end 

    for num in preorder
        @preorder_queue << num 
    end 

    construct(inorder, preorder, map, 0, inorder.length-1)
end

def construct(inorder, preorder, map, ios, ioe)
    return if ios > ioe 

    val = @preorder_queue.pop 

    root = TreeNode.new(val)

    index = map[val]

    root.left = construct(inorder, preorder, map, ios, index-1)

    root.right = construct(inorder, preorder, map, index+1, ioe)

    return root 
end