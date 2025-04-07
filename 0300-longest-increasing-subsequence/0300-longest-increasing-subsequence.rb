# @param {Integer[]} nums
# @return {Integer}
def length_of_lis(nums)
    n = nums.length
    result = 1 
    table = Array.new(n+1, 1)    

    for i in (n-2).downto(0) do 
        for j in (i+1...n) do 
            if nums[i] < nums[j]            
                table[i] = [table[i], 1 + table[j]].max 
            end 
        end         
    end 
    p table 
    return table.max 

end