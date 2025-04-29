# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def count_subarrays(nums, k)
    n = nums.length 
    count = 0 
    left = 0 
    max_element = nums.max 
    nums_map = Hash.new(0)

    for right in (0...n) do 
        nums_map[nums[right]] += 1
        while nums_map.has_key?(max_element) and nums_map[max_element] >= k
            count += (n - right)
            nums_map[nums[left]] -= 1
            nums_map.delete(nums[left]) if nums_map[nums[left]] == 0
            left += 1             
        end 
    end 

    return count 
end