# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
class FindElements

=begin
    :type root: TreeNode
=end
    def initialize(root)
        @tree_set = Set.new 
        queue = Queue.new 
        queue << [root, 0] 
        @tree_set.add(0)

        while(!queue.empty?) do 
            queue.size.times do 
                node, val = queue.pop
                if node.left
                    queue << [node.left, 2*val+1] 
                    @tree_set.add(2*val+1)
                end 

                if node.right
                    queue << [node.right, 2*val+2] 
                    @tree_set.add(2*val+2)
                end    
            end 
        end 

    end


=begin
    :type target: Integer
    :rtype: Boolean
=end
    def find(target)
        return @tree_set.include?(target)
    end


end

# Your FindElements object will be instantiated and called as such:
# obj = FindElements.new(root)
# param_1 = obj.find(target)