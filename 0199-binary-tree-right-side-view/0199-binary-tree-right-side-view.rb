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
def right_side_view(root)
    return [] if root.nil?
    res = []

    queue = Queue.new 
    queue << root 

    while(!queue.empty?) do 
        length = queue.size 
        for i in (0...queue.size) do 
            node = queue.pop             

            if i == length - 1 
                res << node.val 
            end 

            if !node.left.nil?
                queue << node.left 
            end 

            if !node.right.nil? 
                queue << node.right 
            end 
        end 
    end 

    return res 
end