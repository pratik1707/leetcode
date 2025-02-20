# @param {String[]} nums
# @return {String}
def find_different_binary_string(nums)
    n = nums[0].length 

    @res = ''

    nums_set = nums.to_set 

    binary_helper(nums_set, n, 0, [])

    return @res 
end

def binary_helper(nums_set, n, i, slate)
    if i == n and @res == '' and !nums_set.include?(slate.dup.join)        
        @res = slate.dup.join
        return     
    elsif i == n
        return 
    end 


    ['0', '1'].each do |bin|
        slate << bin 
        binary_helper(nums_set, n, i+1, slate)
        slate.pop 
    end 
end 