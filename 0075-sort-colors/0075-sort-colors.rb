# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def sort_colors(nums)
    #initialize to -1 as initially we don't have any red and white cells
    n = nums.length 
    red = -1
    white = -1

    for i in (0...n) do 
        if nums[i] == 1
            white += 1
            nums[i], nums[white] = nums[white], nums[i]
        elsif nums[i] == 0
            white += 1
            nums[i], nums[white] = nums[white], nums[i]
            red += 1
            nums[red], nums[white] = nums[white], nums[red]
        end 
    end 

    return nums 

end