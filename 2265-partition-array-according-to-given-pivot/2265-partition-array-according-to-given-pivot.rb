# @param {Integer[]} nums
# @param {Integer} pivot
# @return {Integer[]}


def pivot_array(nums, pivot)
    ans = []
    n = nums.length 

    equal_count = 0 
    bigger = []
    
    for num in nums do 
        if num == pivot
            equal_count += 1
        elsif num < pivot
            ans << num
        else
            bigger << num
        end 
    end 

    equal_count.times do 
        ans << pivot 
    end 

    bigger.each do |num|
        ans << num
    end 

    return ans 

     

end