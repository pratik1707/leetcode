# @param {Integer[]} nums
# @return {Integer[]}
def apply_operations(nums)
    n = nums.length 
    result = []

    for i in (0...n-1) do 
        if nums[i] == nums[i+1]
            nums[i] = nums[i] * 2
            nums[i+1] = 0 
        end 
    end 

    for num in nums do 
        if num != 0
            result << num 
        end 
    end 

    while(nums.length != result.length) do 
        result << 0
    end 

    return result 
    
end