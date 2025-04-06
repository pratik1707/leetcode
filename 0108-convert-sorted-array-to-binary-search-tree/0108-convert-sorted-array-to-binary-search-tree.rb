# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {Integer[]} nums
# @return {TreeNode}
def sorted_array_to_bst(nums)
    n = nums.length 
    
    construct(nums)

end

def construct(nums)
    return if nums.size == 0

    mid = nums.length/2

    root = TreeNode.new(nums[mid])

    root.left = construct(nums[0...mid])

    root.right = construct(nums[mid+1...nums.length])

    return root 
end 