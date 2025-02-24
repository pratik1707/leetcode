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
# @param {Integer[]} postorder
# @return {TreeNode}
def construct_from_pre_post(preorder, postorder)
    n = preorder.length  

    indexes = [0]*(n+1)
    
    for i in (0...n) do 
        indexes[postorder[i]] = i 
    end 
    # [0, 6, 2, 5, 0, 1, 3, 4]


    return construct(preorder, postorder, 0, n-1, 0,indexes)
    
end

def construct(preorder, postorder, pre_start, pre_end,  pos_start, indexes)
    
    return if pre_start > pre_end

    return TreeNode.new(preorder[pre_start]) if pre_start == pre_end 

    root = TreeNode.new(preorder[pre_start])

    left_root = preorder[pre_start+1]

    num_of_nodes_in_left = indexes[left_root] - pos_start + 1
    p num_of_nodes_in_left


    root.left = construct(preorder, postorder, pre_start+1, pre_start + num_of_nodes_in_left, pos_start, indexes)

    root.right = construct(preorder, postorder, pre_start + num_of_nodes_in_left + 1, pre_end, pos_start + num_of_nodes_in_left, indexes)

    return root 

end 