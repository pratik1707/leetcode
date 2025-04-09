# @param {Integer[]} nums
# @return {Integer}
def minimum_operations(nums)
    count = 0 
    freq = nums.tally 
    return count  if check_freq?(freq)
    n = nums.length 
    i = 0 
    
    while(i < n-2) do 
        freq[nums[i]] -= 1
        freq.delete(nums[i]) if freq[nums[i]] == 0 
        
        i += 1 
        if i%3 == 0
            
            count += 1           
            return count if check_freq?(freq)
        end 
        
    end 
    count += 1
    return count 
    
end

def check_freq?(freq)     
    for k, v in freq do 
        return false if v > 1 
    end 

    return true 
end 