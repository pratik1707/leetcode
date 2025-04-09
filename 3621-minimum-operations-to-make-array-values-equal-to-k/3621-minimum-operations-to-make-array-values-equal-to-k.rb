# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def min_operations(nums, k)
    freq = nums.tally 
    count = 0 

    for key, v in freq do 
        return -1 if key < k
        count += 1 if key != k
    end 

    return count 
end