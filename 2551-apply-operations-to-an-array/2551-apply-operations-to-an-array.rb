# @param {Integer[]} nums
# @return {Integer[]}
def apply_operations(nums)
    n = nums.length 
    #result = []

    for i in (0...n-1) do 
        if nums[i] == nums[i+1]
            nums[i] = nums[i] * 2
            nums[i+1] = 0 
        end 
    end 

    # for num in nums do 
    #     if num != 0
    #         result << num 
    #     end 
    # end 

    # while(nums.length != result.length) do 
    #     result << 0
    # end 

    # return result 

    # [1,0,2,0,0,1]

    non_zero = 0 
    i = 0 

    while(i < n) do 
        if nums[i] != 0
            nums[non_zero] = nums[i]
            non_zero += 1
        end 
        i += 1
    end 

    while(non_zero < n) do 
        nums[non_zero] = 0
        non_zero += 1 
    end 
    
    return nums 
end