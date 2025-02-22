# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {String} traversal
# @return {TreeNode}
def recover_from_preorder(traversal)
    n = traversal.length 
    stack = []

    i = 0 
    num = ''

    while(i < n) do 
        depth = 0 
        

        while(traversal[i] == '-' and i < n) do 
            i += 1
            depth += 1
        end 

        while(i < n and traversal[i] =~ /[0-9]/ ) do 
            num += traversal[i]
            i += 1            
        end 

        while(stack.size > 0 and stack.size > depth) do 
            stack.pop
        end 

        node = TreeNode.new(num)

        if stack.size > 0 and stack[-1].left == nil
            stack[-1].left = node 
        elsif stack.size > 0
            stack[-1].right = node 
        end 

        stack << node 

        num = ''
    end 
    
    return stack[0]
end