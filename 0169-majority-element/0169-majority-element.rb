# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
    n = nums.length 
    freq = nums.tally 

    for key, val in freq do 
        if val >= n.to_f/2.to_f
            return key 
        end 
    end 
end