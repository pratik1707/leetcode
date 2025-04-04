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
def max_path_sum(root)
    @result = -Float::INFINITY 

    dfs(root)

    return @result 
end

def dfs(node)
    return 0 if node.nil?

    #return node.val if node.left.nil? and node.right.nil?
    left = [0, dfs(node.left)].max 

    right = [0, dfs(node.right)].max 

    @result = [@result,  left + right + node.val].max 

    return [left, right].max + node.val 
end 