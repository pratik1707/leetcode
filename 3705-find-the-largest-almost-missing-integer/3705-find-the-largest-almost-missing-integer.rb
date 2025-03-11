# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def largest_integer(nums, k)
    freq = nums.tally 
    result = -1 

    return nums.max if nums.length == k 

    if k == 1         
        for k, v in freq do 
            next if v > 1 
            result = [result, k].max 
        end 
    else 
         if freq[nums[0]] == 1
            result = [result, nums[0]].max 
         end 

         if freq[nums[-1]] == 1
            result = [result, nums[-1]].max 
         end 
    end 

    return result 
end