# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.
def merge(nums1, m, nums2, n)
    return nums1 if n == 0
    #return nums2 if m == 0 

    i = m-1 
    j = n-1 
    k = (m+n-1)

    while(i >= 0 and j >= 0 ) do 
        if nums1[i] >= nums2[j]
            nums1[k] = nums1[i]
            i -= 1
        else
            nums1[k] = nums2[j]
            j -= 1 
        end 
        k -= 1 
    end 

    #p nums1 

    while(j >= 0) do 
        nums1[k] = nums2[j]
        j -= 1 
        k -= 1
    end 

    return nums1 
end