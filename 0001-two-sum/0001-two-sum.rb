# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    nums_hash = {}
    n = nums.length 

    for i in (0...n) do 
        nums_hash[nums[i]] = i 
    end 

    for i in (0...n) do 
        if nums_hash.has_key?(target - nums[i]) and nums_hash[target - nums[i]] != i
            return [i, nums_hash[target - nums[i]]]
        end 
    end 
end