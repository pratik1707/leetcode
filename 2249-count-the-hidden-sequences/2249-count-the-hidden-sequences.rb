# @param {Integer[]} differences
# @param {Integer} lower
# @param {Integer} upper
# @return {Integer}
def number_of_arrays(differences, lower, upper)
    prefix_sum = 0 
    min = 0 
    max = 0 

    # lower <= x, x+diff[0], x + diff[0] + diff[1], x + diff[0]+diff[1]+diff[i] <= upper
    # lower <= min
    # max <= upper

    for diff in differences do 
        prefix_sum += diff 
        min = [min, prefix_sum].min 
        max = [max, prefix_sum].max 
    end 

    x_low = lower - min 
    x_high = upper - max 

    return [0, x_high - x_low + 1].max 
end