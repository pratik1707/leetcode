# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def beautiful_subsets(nums, k)
    n = nums.length 

    nums.sort!

    @res = 0

    freq = Hash.new(0)

    subset_helper(nums, 0, [], k, freq)

    return @res - 1 
end

def subset_helper(nums, i, slate, k, freq)    
    if i == nums.length      
        @res += 1        
        return 
    end 
    
    if !freq.has_key?(nums[i] - k)
        freq[nums[i]] += 1        
        subset_helper(nums, i+1, slate, k, freq)    
        freq[nums[i]] -= 1
        freq.delete(nums[i]) if freq[nums[i]] == 0
    end 

    subset_helper(nums, i+1, slate, k, freq)           

end 
