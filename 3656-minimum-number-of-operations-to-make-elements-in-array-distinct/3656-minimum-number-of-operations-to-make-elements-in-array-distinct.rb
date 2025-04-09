# @param {Integer[]} nums
# @return {Integer}
def minimum_operations(nums)
    count = 0 
    freq = nums.tally 
    return count  if check_freq?(freq)
    n = nums.length 
    i = 0 
    
    while(i < n-2) do 
        update_freq(freq, nums[i])        
        i += 1 

        if i%3 == 0            
            count += 1           
            return count if check_freq?(freq)
        end         
    end
     
    count += 1
    return count 
    
end

def update_freq(freq, num)

    freq[num] -= 1
    freq.delete(num) if freq[num] == 0 

end 

def check_freq?(freq)     
    for k, v in freq do 
        return false if v > 1 
    end 

    return true 
end 