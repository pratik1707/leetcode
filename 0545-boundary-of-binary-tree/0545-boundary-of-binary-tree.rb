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
def boundary_of_binary_tree(root)

    return [root.val] if root.left.nil? and root.right.nil?

    res = []

    res << root.val 

    left_nodes = []

    leaf_nodes = []

    right_nodes = []
    
    get_left_nodes(root.left, left_nodes)

    p left_nodes

    res << left_nodes

    get_leaf_nodes(root, leaf_nodes)

    res << leaf_nodes

    get_right_nodes(root.right, right_nodes)

    res << right_nodes.reverse 

    return res.compact.flatten  

end

def get_right_nodes(node, right_nodes)   
    
    return if node.nil?
    
    return if node.left.nil? and node.right.nil?
    
    right_nodes << node.val 

    if node.right.nil? and !node.left.nil?
        get_right_nodes(node.left, right_nodes)
    else
        get_right_nodes(node.right, right_nodes)
    end 
     
end 

def get_leaf_nodes(node, leaf_nodes)
    return if node.nil?

    if node.left.nil? and node.right.nil?
        leaf_nodes << node.val 
    end 

    get_leaf_nodes(node.left, leaf_nodes)

    get_leaf_nodes(node.right, leaf_nodes)
end 

def get_left_nodes(node, left_nodes)   
    return if node.nil?
    
    return if node.left.nil? and node.right.nil?
    
    left_nodes << node.val 

    if node.left.nil? and !node.right.nil?
        get_left_nodes(node.right, left_nodes)
    else
        get_left_nodes(node.left, left_nodes)
    end 
    
     
end 