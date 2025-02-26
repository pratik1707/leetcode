# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def next_permutation(nums)
    n = nums.length 
    
    i = n-1 

    while(i > 0) do 
        break if nums[i] > nums[i-1]
        i -= 1 
    end 

    if i > 0
        j = n-1 
        while(j >= 0 and nums[j] <= nums[i-1]) do 
            j -= 1
        end 
        nums[j], nums[i-1] = nums[i-1], nums[j]
        nums[0...n] = (nums[0...i] + nums[i...n].reverse )
    else
        nums[0...n] = (nums[0...i] + nums[i...n].reverse )
    end    
    

    return nums 

    


end