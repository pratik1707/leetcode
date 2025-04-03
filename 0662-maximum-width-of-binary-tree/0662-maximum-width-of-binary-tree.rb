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
def width_of_binary_tree(root)
    return 1 if root.left.nil? and root.right.nil? 

    max_width = 0 

    queue = Queue.new 

    queue << [root , 0]
    

    while(!queue.empty?) do 
        min_val = Float::INFINITY
        max_val = 0 
        queue.size.times do 
            node, val = queue.pop 
            min_val = [val, min_val].min 
            max_val = [val , max_val].max 

            if node.left != nil
                queue << [node.left , 2 * val+1]
            end 

            if node.right != nil
                queue << [node.right, 2 * val + 2] 
            end 
             
        end 

        #p max_val
        #p min_val
        max_width = [max_width, max_val - min_val + 1].max 
    end 

    return max_width
end