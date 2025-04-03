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
# @return {Boolean}
def is_balanced(root)
    return true if root.nil? 

    return true if root.left.nil? and root.right.nil? 

    @flag = true 

    dfs(root)

    return @flag 

end

def dfs(node)
    if node.left.nil? and node.right.nil?
        return 1
    end 

    left = 0 

    right = 0 

    left = dfs(node.left) if node.left != nil

    right = dfs(node.right) if node.right != nil

    if (right - left).abs > 1 and @flag
        @flag = false 
    end 

    return [left, right].max + 1
end 