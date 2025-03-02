# @param {Integer[][]} nums1
# @param {Integer[][]} nums2
# @return {Integer[][]}
def merge_arrays(nums1, nums2)
    result = []
    # result_hash = Hash.new(0)

    # for i in (0...nums1.length) do 
    #     result_hash[nums1[i][0]] += nums1[i][1]
    # end 

    # for i in (0...nums2.length) do 
    #     result_hash[nums2[i][0]] += nums2[i][1]
    # end 

    # return result_hash.sort_by{|k, v| k} 

    m = nums1.length
    n = nums2.length

    i = 0 
    j = 0 

    while(i < m and j < n) do
        if nums1[i][0] == nums2[j][0]
            result << [nums1[i][0], (nums1[i][1] + nums2[j][1])]
            i += 1
            j += 1
        elsif nums1[i][0] < nums2[j][0]
            result << [nums1[i][0], (nums1[i][1] )]
            i += 1 
        else
            result << [nums2[j][0], (nums2[j][1] )]
            j += 1 
        end 
    end 

    while(i < m) do 
        result << [nums1[i][0], (nums1[i][1] )]
        i += 1
    end 

    while(j < n) do 
        result << [nums2[j][0], (nums2[j][1] )]
        j += 1 
    end 

    return result 
end