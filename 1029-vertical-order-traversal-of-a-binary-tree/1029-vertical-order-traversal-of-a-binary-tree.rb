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
def vertical_traversal(root)
    queue = Queue.new 

    queue << [root, 0, 0]
    nodes_map = Hash.new{|h, k| h[k] = [] }
    result = []
    min_val = 0
    max_val = 0

    while(!queue.empty?) do 
        queue.size.times do 
            node, row, col = queue.pop 
            nodes_map[col] << [row, node.val]
            min_val = [min_val, col].min 
            max_val = [max_val, col].max 

            if node.left != nil
                queue << [node.left, row + 1, col-1]
            end 

            if node.right != nil
                queue << [node.right, row + 1, col+1]
            end 
        end 
    end 


    for i in (min_val..max_val) do 
        if nodes_map.has_key?(i)
            result << nodes_map[i].sort.collect{|a| a[1]}
        end 
    end 

    return result 
end