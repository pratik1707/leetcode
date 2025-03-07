# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def max_sub_array_len(nums, k)
    n = nums.length
    prefix_sum = []
    sum = 0 
    result = 0 
    # [0,1,2,3,4,5,6,7] => [0,1,3,6,10,15,21,28]

    for num in nums do 
        sum += num 
        prefix_sum << sum 
    end 

    map = {}

    for i in (0...prefix_sum.length) do 
        map[prefix_sum[i]] = i 
    end 

    result = [result, map[k]+1].max  if map.has_key?(k)
    map = {}
    
    #[-2, -3, -1, 0]
    # [1,1,0]
    for i in (0...n) do 
        num = prefix_sum[i]
        if map.has_key?(num-k )
            result = [result, i-map[num-k]].max
        end 

        map[num] = i if !map.has_key?(num)
        
    end 
    
    return result 
    
end