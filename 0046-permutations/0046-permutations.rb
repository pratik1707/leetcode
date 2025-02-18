# @param {Integer[]} nums
# @return {Integer[][]}
def permute(nums)
    res = []

    p_helper(nums, 0, [], res, nums.length)

    return res 
end

def p_helper(nums, i, slate, res, n)
    # nums 
    if i == n
        res << slate.dup
        return 
    end 

    for j in (0...nums.length) do 
        slate << nums[j]
        p_helper(nums[0...j] + nums[j+1...nums.length], i+1, slate, res, n)
        slate.pop 
    end 
end 