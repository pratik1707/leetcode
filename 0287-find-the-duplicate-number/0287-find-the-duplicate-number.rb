# @param {Integer[]} nums
# @return {Integer}
def find_duplicate(nums)
    n = nums.length 

    # [4,3,4,5,2,4,1]
    [1, 2, 3, 4]
    low = 1
    high = n-1 
    duplicate = nil 

    while(low <= high) do 
        curr = (low + high)/2 
        count = 0 

        for num in nums do 
            count += 1 if curr >= num 
        end 

        if count > curr
            duplicate = curr
            high = curr-1 
        else
            low = curr+1
        end  
    end 

    return duplicate
end