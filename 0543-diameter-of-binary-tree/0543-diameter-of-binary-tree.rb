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
# @return {Integer}
def diameter_of_binary_tree(root)
    @my_dia = 0 

    dfs(root)

    return @my_dia 
end

def dfs(node)
    if node.left.nil? and node.right.nil?
        return 1
    end 

    left = 0 

    right = 0 

    left = dfs(node.left) if node.left != nil

    right = dfs(node.right) if node.right != nil

    @my_dia = [@my_dia, left + right].max 

    return [left, right].max + 1
end 