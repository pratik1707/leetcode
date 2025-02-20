# @param {Integer[]} nums
# @return {Integer[][]}
def subsets(nums)
    n = nums.length 

    res = []

    subset_helper(nums, 0, [], res)

    return res 
end 

def subset_helper(nums, i, slate, res)
    if i == nums.length
        res << slate.dup 
        return 
    end 

    subset_helper(nums, i+1, slate, res)

    slate << nums[i]
    subset_helper(nums, i+1, slate, res)
    slate.pop 
end 


 
