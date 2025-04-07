# @param {Integer[]} nums
# @return {Integer}
def max_product(nums)
    n = nums.length 
    result = nums[0]
    min_val = nums[0]
    max_val = nums[0]

    for i in (1...n) do 
        products = [nums[i], nums[i] * min_val, nums[i] * max_val]
        result = [result, products.max].max  
        min_val = [nums[i], products.min ].min 
        max_val = [nums[i], products.max].max 
    end 

    return result 
end