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
# @param {Integer[]} inorder
# @return {TreeNode}
def build_tree(preorder, inorder)
    map = {}

    @preorder_queue = Queue.new 

    for i in (0...preorder.length) do 
        @preorder_queue << preorder[i]
    end 

    for i in (0...inorder.length) do 
        map[inorder[i]] = i
    end 

    n = preorder.length 

    construct(preorder, inorder, 0, n, map)
end

def construct(preorder, inorder, ios, ioe, map)
    return if ios >= ioe

    val = @preorder_queue.pop

    root = TreeNode.new(val)

    index = map[val]

    root.left = construct(preorder, inorder,  ios, index, map)

    root.right = construct(preorder, inorder, index+1, ioe, map)

    return root 
end 