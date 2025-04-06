# Definition for Node.
# class Node
#     attr_accessor :val, :left, :right, :next
#     def initialize(val)
#         @val = val
#         @left, @right, @next = nil, nil, nil
#     end
# end

# @param {Node} root
# @return {Node}
def connect(root)
    return root if root.nil? 

    queue = Queue.new 

    queue << root 

    while(!queue.empty?) do 
        prev = nil 

        queue.size.times do 
            node = queue.pop 

            prev.next = node if prev != nil 

            prev = node 

            if node.left != nil
                queue << node.left 
            end 

            if node.right != nil 
                queue << node.right 
            end 
        end 
    end 

    return root 
end