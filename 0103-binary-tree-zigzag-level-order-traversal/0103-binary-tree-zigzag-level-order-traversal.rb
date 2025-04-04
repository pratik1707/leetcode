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
# @return {Integer[][]}
def zigzag_level_order(root)
    return [] if root.nil?

    i = 0 

    res = []

    queue = Queue.new 

    queue << root 

    while(!queue.empty?) do 
        n_a = []

        queue.size.times do 
            node = queue.pop 
            n_a << node.val 

            if node.left != nil 
                queue << node.left 
            end 

            if node.right  != nil 
                queue << node.right 
            end 
        end 
        if i.odd?
            res << n_a.reverse
        else
            res << n_a 
        end 

        i += 1 
    end 

    return res 
end