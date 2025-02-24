# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
    sum = nums[0]

    n = nums.length
    max_result = sum 

    for i in (1...nums.length) do 
        num = nums[i]
        sum = [sum + num, num].max 
        max_result = [max_result, sum].max 
    end 

    return max_result 
end