# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[][]}
def four_sum(nums, target)
    nums.sort! 

    #[-2, -1, 0, 0, 1, 2]

    n = nums.length 

    @result = []

    for i in (0...n) do 
        num = nums[i]
        diff = target - nums[i] 
        three_sum(diff, nums[i+1...n], num)
    end 

    return @result.uniq  

end

def three_sum(target, nums, first_num)

    for i in (0...nums.length) do 
        num = nums[i]
        diff = target - nums[i] 
        two_sum(diff, nums[i+1...nums.length], first_num, num)
    end 
end 

def two_sum(target, nums, first_num, second_num)
    i = 0 
    j = nums.length - 1

    while(i < j) do 
        sum = nums[i] + nums[j]
        if sum > target
            j -= 1
        elsif sum < target
            i += 1
        elsif sum == target
            @result << [nums[i], nums[j], first_num, second_num]
            j -= 1 
        end 
    end 
    
end 