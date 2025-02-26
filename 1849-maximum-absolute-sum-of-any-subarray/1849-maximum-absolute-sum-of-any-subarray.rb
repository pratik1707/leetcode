# @param {Integer[]} nums
# @return {Integer}
def max_absolute_sum(nums)
    result = 0 

    n = nums.length 
    curr = 0 
    max_sum = 0 

    for i in (0...n) do 
        num = nums[i]
         # 1
        curr = [curr + nums[i], nums[i]].max   

        max_sum = [max_sum, curr].max 
    end 

    min_sum = Float::INFINITY 
    curr = 0 

    for i in (0...n) do 
        num = nums[i]
         # 1
        curr = [curr + nums[i], nums[i]].min            

        min_sum = [min_sum, curr].min 
    end 

    if max_sum > min_sum.abs 
        return max_sum 
    else
        return min_sum.abs 
    end 
end