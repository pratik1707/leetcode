# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {TreeNode} p
# @param {TreeNode} q
# @return {TreeNode}
def lowest_common_ancestor(root, p, q)
    @lca = nil 

    get_lca(root, p, q)

    return @lca 
end

def get_lca(node, a, b)
   return  if node.nil? 

   p_found = false 
   q_found = false 

   p_found = true if node == a

   q_found = true if node == b

   if node.left != nil 
        pf, qf = get_lca(node.left, a, b)
        p_found = p_found || pf
        q_found = q_found || qf
   end 

   if node.right != nil
        pf, qf = get_lca(node.right, a, b)
        p_found = p_found || pf
        q_found = q_found || qf
   end 

   if p_found and q_found and !@lca 
        p "aaaa"
        @lca = node  
   end 

   return p_found, q_found 

end 