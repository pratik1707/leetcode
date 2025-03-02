# @param {Integer[][]} nums1
# @param {Integer[][]} nums2
# @return {Integer[][]}
def merge_arrays(nums1, nums2)
    result_hash = Hash.new(0)

    for i in (0...nums1.length) do 
        result_hash[nums1[i][0]] += nums1[i][1]
    end 

    for i in (0...nums2.length) do 
        result_hash[nums2[i][0]] += nums2[i][1]
    end 

    return result_hash.sort_by{|k, v| k} 
end